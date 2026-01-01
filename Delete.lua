-- Folders to search
local settings = {
    "/storage/emulated/0/Download/Main/",
    "/storage/emulated/0/Download/"
}

-- File names to delete
local filesToDelete = {
    "MainTable.lua",
    "Main.lua"
}

local deleted = 0
local notFound = 0

for _, folder in ipairs(settings) do
    for _, filename in ipairs(filesToDelete) do
        local fullPath = folder .. filename

        local file = io.open(fullPath, "r")
        if file then
            file:close()
            os.remove(fullPath)
            gg.toast("Deleted: " .. fullPath)
            deleted = deleted + 1
        else
            notFound = notFound + 1
        end
    end
end

gg.alert(
    "Scan Complete\n\n" ..
    "Deleted: " .. deleted .. "\n" ..
    "Not Found: " .. notFound
)
