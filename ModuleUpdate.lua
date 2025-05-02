local gameDataModule

--============================================================--
-- Load local GameDataModule
--============================================================--
-- Load local GameDataModule
local success, result = pcall(function()
    return require("GameDataModule")
end)

if success then
    gameDataModule = result
else
    -- Try loading manually
    local path = "/storage/emulated/0/Download/.pass/GameDataModule.lua"
    local file = io.open(path, "r")
    if file then
        local fileContent = file:read("*a")
        file:close()
        local func, loadErr = load(fileContent, "GameDataModule", "t", _ENV)
        if func then
            local ok, modResult = pcall(func)
            if ok then
                gameDataModule = modResult
            else
                gg.alert("Error loading GameDataModule: " .. tostring(modResult))
                os.exit()
            end
        else
            gg.alert("Error parsing GameDataModule: " .. tostring(loadErr))
            os.exit()
        end
    else
        gg.alert("No data module Script error")
        os.exit()
    end
end



--============================================================--
-- HTTP fetch function
--============================================================--
function getRemoteContent(url, timeout, retries)
    timeout = timeout or 5
    retries = retries or 2
    local attempt = 0

    while attempt <= retries do
        local startTime = os.clock()
        local http = gg.makeRequest(url)
        local elapsed = os.clock() - startTime

        if http and http.content and http.code == 200 then
            return http.content
        elseif elapsed >= timeout then
            gg.toast("Timeout after " .. timeout .. "s. Retrying... (" .. (attempt + 1) .. "/" .. (retries + 1) .. ")")
        else
            gg.toast("Connection failed. Retrying... (" .. (attempt + 1) .. "/" .. (retries + 1) .. ")")
        end

        attempt = attempt + 1
    end

    return nil
end

--============================================================--
-- Parse remote Lua table safely
--============================================================--
function loadLuaTable(luaString)
    local env = {}
    local func, err = load(luaString, "GameData", "t", env)
    if not func then
        gg.alert("Error parsing Lua table: " .. tostring(err))
        return nil
    end

    local success, result = pcall(func)
    if not success then
        gg.alert("Error running Lua code: " .. tostring(result))
        return nil
    end

    if env.gameData then
        return env.gameData
    else
        gg.alert("Error: No 'gameData' table found.")
        return nil
    end
end


--============================================================--
-- Helpers
--============================================================--
function tableContains(tbl, value)
    if not tbl then return false end
    for _, v in ipairs(tbl) do
        if v == value then return true end
    end
    return false
end

--============================================================--
-- Function to display new version found
--============================================================--
function displayNewVersionFound(localData, remoteData)
    local newVersionMessage = "=============================\n New Version Found!\n Target: GameDataModule\n=============================\n"
    local hasChanges = false

    for version, remoteVersionData in pairs(remoteData) do
        local versionMessage = ""
        local localVersionData = localData[version]

        for architecture, remoteArchData in pairs(remoteVersionData) do
            local localArchData = localVersionData and localVersionData[architecture]
            local archMessage = ""

            if not localArchData then
                archMessage = archMessage .. "  -> New Architecture Detected\n"
            end

            -- Check Offsets
            if remoteArchData.Offsets then
                for menu, offsets in pairs(remoteArchData.Offsets) do
                    local localOffsets = localArchData and localArchData.Offsets and localArchData.Offsets[menu] or {}
                    for _, offset in ipairs(offsets) do
                        if not tableContains(localOffsets, offset) then
                            archMessage = archMessage .. "    • [Offset] " .. menu .. ": 0x" .. string.format("%X", offset) .. "\n"
                        end
                    end
                end
            end

            -- Check Menus
            if remoteArchData.Menus then
                for menuType, menuItems in pairs(remoteArchData.Menus) do
                    local localMenuItems = localArchData and localArchData.Menus and localArchData.Menus[menuType] or {}
                    local newItems = {}

                    for _, item in ipairs(menuItems) do
                        if not tableContains(localMenuItems, item) then
                            table.insert(newItems, item)
                        end
                    end

                    if #newItems > 0 then
                        archMessage = archMessage .. "\n    >> New Menu Added at [" .. menuType .. "] Section:\n"
                        for _, newItem in ipairs(newItems) do
                            archMessage = archMessage .. "       - " .. newItem .. "\n"
                        end
                    end
                end
            end

            if archMessage ~= "" then
                versionMessage = versionMessage .. "\n  [ Architecture: " .. architecture .. " ]\n" .. archMessage
            end
        end

        if versionMessage ~= "" or not localVersionData then
            newVersionMessage = newVersionMessage .. "\n< Version: " .. version .. " >\n" .. versionMessage .. "\n-----------------------------\n"
            hasChanges = true
        end
    end

    if hasChanges then
        gg.alert(newVersionMessage)
    end
end

--============================================================--
-- Function to display mismatch details
--============================================================--
function displayMismatchFound(localData, remoteData)
    local mismatchMessage = "=============================\n Mismatch Detected!\n Target: GameDataModule\n=============================\n"
    local hasMismatch = false

    for version, remoteVersionData in pairs(remoteData) do
        local versionMessage = ""
        local localVersionData = localData[version]

        if not localVersionData then
            versionMessage = versionMessage .. "\n< Version Missing Locally: " .. version .. " >\n"
        else
            for architecture, remoteArchData in pairs(remoteVersionData) do
                local localArchData = localVersionData[architecture]
                local archMessage = ""

                if not localArchData then
                    archMessage = archMessage .. "  -> Architecture Missing: " .. architecture .. "\n"
                else
                    -- Check Offsets mismatch
                    if remoteArchData.Offsets then
                        for menu, remoteOffsets in pairs(remoteArchData.Offsets) do
                            local localOffsets = localArchData.Offsets and localArchData.Offsets[menu] or {}
                            for _, offset in ipairs(remoteOffsets) do
                                if not tableContains(localOffsets, offset) then
                                    archMessage = archMessage .. "    >> Mismatch Found in [Offsets] at Menu: " .. menu .. "\n"
                                    archMessage = archMessage .. "       - Missing Offset: 0x" .. string.format("%X", offset) .. "\n"
                                end
                            end
                        end
                    end

                    -- Check Menus mismatch
                    if remoteArchData.Menus then
                        for menuType, remoteMenuItems in pairs(remoteArchData.Menus) do
                            local localMenuItems = localArchData.Menus and localArchData.Menus[menuType] or {}
                            local missingItems = {}

                            for _, item in ipairs(remoteMenuItems) do
                                if not tableContains(localMenuItems, item) then
                                    table.insert(missingItems, item)
                                end
                            end

                            if #missingItems > 0 then
                                archMessage = archMessage .. "\n    >> Mismatch Found in [" .. menuType .. "] Section at " .. version .. " (" .. architecture .. "):\n"
                                for _, missingItem in ipairs(missingItems) do
                                    archMessage = archMessage .. "       - Missing: " .. missingItem .. "\n"
                                end
                            end
                        end
                    end
                end

                if archMessage ~= "" then
                    versionMessage = versionMessage .. "\n  [ Architecture: " .. architecture .. " ]\n" .. archMessage
                end
            end
        end

        if versionMessage ~= "" then
            mismatchMessage = mismatchMessage .. versionMessage .. "\n-----------------------------\n"
            hasMismatch = true
        end
    end

    if hasMismatch then
        gg.alert(mismatchMessage)
    else
        gg.alert("=============================\n No Mismatches Found!\n Everything is Up to Date.\n=============================")
    end
end


function compareVersions(localData, remoteData)
    local updateRequired = false

    for version in pairs(localData) do
        if not remoteData[version] then
            gg.alert("Mismatch: Local version " .. version .. " missing remotely!")
            displayMismatchFound(localData, remoteData)
            return false
        end
    end

    for version in pairs(remoteData) do
        if not localData[version] then
            updateRequired = true
            break
        end
    end

    if updateRequired then
        gg.alert("Update required! New versions found.")
        displayNewVersionFound(localData, remoteData)
        return false
    end

    return true
end

--============================================================--
-- Fetch and Compare
--============================================================--
function Update()
local remoteUrl1 = "https://raw.githubusercontent.com/JericXE/Game-guardian/main/GameDataModule.lua"
local remoteUrl = "https://raw.githubusercontent.com/JericXE/Game-guardian/refs/heads/main/Modules"
local remoteContent = getRemoteContent(remoteUrl, 5, 2)

if remoteContent then
    local remoteGameData = loadLuaTable(remoteContent)
    if remoteGameData then
        if compareVersions(gameDataModule, remoteGameData) then
            gg.alert("Game data is fully up to date.")
        end
    else
        gg.alert("Failed to load remote GameData.")
        os.exit()
    end
else
    gg.alert("Failed to fetch remote GameData.")
    return
end
end

Update()
