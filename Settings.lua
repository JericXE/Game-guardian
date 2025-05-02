function decoratedMainMenu()
    local title = "╔════════════════════════╗\n" ..
                  "   ⚙️  Main Script Module Menu\n" ..
                  "╚════════════════════════╝"

    local menu = {
        "🔍  Check Module Update",
        "📜  Check Script Version",
        "🎨  Decoration Settings",
        "❌  Exit Script"
    }

    local choice = gg.choice(menu, nil, title)

    if choice == 1 then
        gg.alert("Checking module update...")
        -- Add your update checking logic here
    elseif choice == 2 then
        gg.alert("Opening script version viewer...")
        -- Add your version check logic here
    elseif choice == 3 then
        gg.alert("Opening decoration settings...")
        -- Call your decoration settings here
    elseif choice == 4 or choice == nil then
        gg.alert("Goodbye!")
        return
    end
end

-- Call it:
decoratedMainMenu()
