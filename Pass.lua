--=============================--
--        Password Prompt       --
--=============================--

local filePath = "/storage/emulated/0/a.txt"
local expiryDuration = 1 * 60 * 60 -- 6 hours

local keys = {
    {
        password = "Update1.4",
        link = "https://lootdest.org/s?LwKJdb9a"
    },
    {
        password = "Core1.1",
        link = "https://lootdest.org/s?YFHsm3wc"
    },
    {
        password = "Process1.5",
        link = "https://loot-link.com/s?KGSns6Xc"
    },
    {
        password = "Update1.6",
        link = "https://lootdest.org/s?NEXTLINKHERE2"
    },
    {
        password = "Update1.7",
        link = "https://lootdest.org/s?NEXTLINKHERE3"
    }
}

--=============================--
--      File Utilities         --
--=============================--

local function writeState(password)
    local expiry = os.time() + expiryDuration
    local f = io.open(filePath, "w")
    if not f then return false end
    f:write(password .. "|" .. expiry)
    f:close()
    return true
end

local function readState()
    local f = io.open(filePath, "r")
    if not f then return nil end
    local data = f:read("*a")
    f:close()

    local password, expiry = data:match("(.+)|(%d+)")
    if not password then return nil end
    return password, tonumber(expiry)
end

--=============================--
--      Helper Logic           --
--=============================--

local function findIndexByPassword(password)
    for i, k in ipairs(keys) do
        if k.password == password then
            return i
        end
    end
    return nil
end

--=============================--
--      Progress Logic         --
--=============================--

local function getCurrentPassword()
    local savedPassword, expiry = readState()

    if not savedPassword or not expiry then
        return keys[1].password
    end

    local index = findIndexByPassword(savedPassword)
    if not index then
        return keys[1].password
    end

    if os.time() > expiry then
        index = index + 1
        if index > #keys then
            index = 1
        end
        return keys[index].password
    end

    return savedPassword
end

local function isStillValid(currentPassword)
    local savedPassword, expiry = readState()
    if not savedPassword or not expiry then return false end
    if savedPassword ~= currentPassword then return false end
    if os.time() > expiry then return false end
    return true
end

local function promptPassword(password)
    local index = findIndexByPassword(password)

    local input = gg.prompt(
        {"📝 Enter Password", "Get Key"},
        {"", false},
        {"text", "checkbox"}
    )

    if not input then return end

    if input[2] then
        gg.copyText(keys[index].link)
        gg.toast("📋 Key copied")
        promptPassword(password)
        return
    end

    if input[1] == password then
        writeState(password) 
        gg.toast("✅ Access granted (valid for 6h)")
        return
    else
        gg.alert("⛔ Wrong password")
        promptPassword(password)
    end
end

--=============================--
--            START            --
--=============================--

local currentPassword = getCurrentPassword()

if not isStillValid(currentPassword) then
    promptPassword(currentPassword)
end
