--=============================--
--        Password Prompt       --
--=============================--

--=============================--
--       Configuration         --
--=============================--

local folderPath = "/storage/emulated/0/"
local filePath = folderPath .. "/a.txt"
local defaultPassword = "Updated1.2.1.1"
local expiryDuration = 6 * 60 * 60 -- (Set to 5 * 3600 for 5 hours if needed)

--=============================--
--      Utility Functions      --
--=============================--

function writePasswordFile(password)
    local expiry = os.time() + expiryDuration
    local f = io.open(filePath, "w")
    if f then
        f:write(password .. " " .. expiry)
        f:close()
    else
        gg.alert("❌ [ FILE ERROR ] ❌\n\nUnable to create password file!\n\n📄 Path:\n" .. filePath)
        return
    end
end

--=============================--
--          Main Flow          --
--=============================--

function try()
    local input = gg.prompt(
        {"📝 Enter Password:", "Get Key"},
        {"", false},
        {"text", "checkbox"}
    )

    if not input then
        gg.toast("❌ Cancelled. Exiting script.")
        return
    end

    local enteredPassword = input[1]
    local getKeyChecked = input[2]

    if getKeyChecked then
        gg.copyText("https://link-target.net/167243/ImZ3LQXpQp2J")
        gg.toast("📋 Key copied to clipboard!")
        try()
        return
    end

    if enteredPassword == defaultPassword then
        writePasswordFile(defaultPassword)
        gg.toast("✅ Password correct! Saving and restarting...")
    else
        gg.alert("⛔ [ DENIED ] ⛔\n\nIncorrect password entered.")
        try()
    end
end

try()
