--=============================--
--        Password Prompt       --
--=============================--

local filePath = "/storage/emulated/0/a.txt"
local expiryDuration = 1 * 60 -- 6 hours

local keys = {
    {
        password = "Update1.3",
        link = "https://lootdest.org/s?mwxUCqJc"
    },
    {
        password = "Update1.4",
        link = "https://lootdest.org/s?NEXTLINKHERE"
    }
}

--=============================--
--      File Utilities         --
--=============================--

local function writeState(index)
    local expiry = os.time() + expiryDuration
    local f = io.open(filePath, "w")
    if not f then return false end
    f:write(index .. "|" .. expiry)
    f:close()
    return true
end

local function readState()
    local f = io.open(filePath, "r")
    if not f then return nil end
    local data = f:read("*a")
    f:close()

    local index, expiry = data:match("(%d+)|(%d+)")
    if not index then return nil end
    return tonumber(index), tonumber(expiry)
end

--=============================--
--      Progress Logic         --
--=============================--

local function getCurrentIndex()
    local index, expiry = readState()

    if not index or not expiry then
        return 1
    end

    if os.time() > expiry then
        index = index + 1
        if index > #keys then
            index = 1
        end
    end

    return index
end

local function promptPassword(index)
    local input = gg.prompt(
        {"📝 Enter Password", "Get Key"},
        {"", false},
        {"text", "checkbox"}
    )

    if not input then os.exit() end

    if input[2] then
        gg.copyText(keys[index].link)
        gg.toast("📋 Key copied")
        promptPassword(index)
        return
    end

    if input[1] == keys[index].password then
        writeState(index) 
        gg.toast("✅ Access granted")
        return
    else
        gg.alert("⛔ Wrong password")
        promptPassword(index)
    end
end

--=============================--
--            START            --
--=============================--

local currentIndex = getCurrentIndex()
promptPassword(currentIndex)
