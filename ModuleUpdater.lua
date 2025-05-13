-- GameDataModule.lua

gameData = {
    ["14.3.0"] = {
        ["32-bit CBB"] = {
            
        },
        ["64-bit CBB"] = {
            OffsetsForDetection = 0xAABCFC,
        },
        ["64-bit other"] = {
            OffsetsForDetection = 0xAABCFC,
            Offsets = {
                InGameMenu = {
                    AutoWin = {0xB330C0, 0xB330C0},
                    InfinityHp = {0xB27648, 0xB27648},
                    InfinityEnergy = {0xAB53F0, 0xAB53F4},
                    UnlockAllMap = {0xAB5AC4, 0xAB5AE4},
                    UnlockAllTreasure = {0xAB6310, 0xAB6ADC},
                },
                LobbyMenu = {
                    Food = {0xAB5310, 0xAB5314},
                    EXP = {0xAB5468, 0xAB546C},
                    Items = {0xAF3108, 0xAF3134},
                    CatEye = {0xEA4EE4, 0xEA4F10},
                    NP = {0xAB5470, 0xAB5474},
                    GamatotoV = {0xEA4F14, 0xEA4F28},
                    GamatotoM = {0xEA4F2C, 0xEA4F68},
                    GamatotoAM = {0xEA4F6C, 0xEA4FA8},
                    Ticket = {0xD9C634, 0xD9C640, 0xAAC648, 0xAAC664, 0xAAD2A8, 0xAAD2B4}
                },
                CatMenu = {
                    UnlockAll = {0xAEFE60, 0xAF0AD8},
                    DeUnlockAll = {0xAEFE64, 0xAF0ADC},
                    MaxAll = {0xAF0AE0, 0xAF23D4},
                    FormAll = {0xE16BE8, 0xE17860},
                    FormAllT = {0xE17864, 0xE184DC},
                    FormReset = {0xE16BE8, 0xE184DC},
                },
                OtherMenu = {
                    FreeStarterPack = {0xAABCFC, 0xAABCFC},
                    Speed = {0xEAAA28, 0xEAAA28},
                    CatFruit = {0x2069FAD94, 0x2069FAE74},
                    RemoveAd = {0xEAAA28, 0xEAAA28},
                }
            },
            Menus = {
                InGame = {"★[►⚡ ᴀᴜᴛᴏ ᴡɪɴ◄]★", "★[►🏰 ɪɴғɪɴɪᴛʏ ʙᴀsᴇ ʜᴘ◄]★", "★[►♾️ ɪɴғɪɴɪᴛʏ ᴇɴᴇʀɢʏ◄]★", "★[►🧹 ᴄʟᴇᴀʀ ᴀʟʟ◄]★", "★[►💎 ᴀʟʟ ᴛʀᴇᴀsᴜʀᴇ◄]★"},
                Lobby = {"★[►🍖 ᴄᴀᴛ ғᴏᴏᴅ◄]★", "★[►📚 xᴘ◄]★", "★[►🎒 ɪᴛᴇᴍs◄]★", "★[►👁️ ᴄᴀᴛ ᴇʏᴇs◄]★", "★[►🎟️ ᴄᴀᴛ ᴛɪᴄᴋᴇᴛs◄]★", "★[►💊 ᴄᴀᴛᴀᴍɪɴs◄]★", "★[►🪨 ᴍᴀᴛᴇʀɪᴀʟs◄]★", "★[►⚙️ ᴀᴅᴠᴀɴᴄᴇ ᴍᴀᴛᴇʀɪᴀʟs◄]★", "★[►🪙 ɴᴘ◄]★"},
                Other = {"★[►🎁 ғʀᴇᴇ sᴛᴀʀᴛᴇʀ ᴘᴀᴄᴋ◄]★", "★[►🚫 ʀᴇᴍᴏᴠᴇ ᴘᴏᴘ ᴜᴘ◄]★", "★[►🍎 ᴄᴀᴛ ғʀᴜɪᴛ ɢɪᴠᴇʀ◄]★", "★[►🔮 ᴛᴀʟᴇɴᴛ ᴏʀʙ ɢɪᴠᴇʀ◄]★"},
                Cat = {"★[►🔓 ᴜɴʟᴏᴄᴋ ᴀʟʟ◄]★", "★[►⬆️ ᴍᴀx ʟᴇᴠᴇʟ ᴀʟʟ◄]★", "★[►✨ ᴛʀᴜᴇ ғᴏʀᴍ ᴀʟʟ◄]★"},
            },
            valueMapping = {4294967296,8589934592,12884901888,17179869184,21474836480,25769803776,30064771072,34359738368,38654705664,42949672960},
            SeedMapping = {0, 2, 4, 6, 8, 10, 12} 
        },
        ["32-bit other"] = {
            OffsetsForDetection = 0x9E2558,
            Offsets = {
                InGameMenu = {
                    AutoWin = {0xA48DCC, 0xA48DCC}, --)
                    InfinityHp = {0xA3D354, 0xA3D354}, --)
                    InfinityEnergy = {0x9E75B0, 0x9E75B4}, --)
                    UnlockAllMap = {0x9E7B8C, 0x9E7BAC}, --)
                    UnlockAllTreasure = {0x9E83D8, 0x9E8BA4}, --)
                },
                LobbyMenu = {
                    Food = {0x9E74F8, 0x9E74FC}, --)
                    EXP = {0x9E7618, 0x9E761C}, --)
                    Items = {0xA08E4C, 0xA08E78}, --)
                    CatEye = {0xD3C71C, 0xD3C748}, --)
                    NP = {0x9E7620, 0x9E7624}, --)
                    GamatotoV = {0xD3C74C, 0xD3C760}, --)
                    GamatotoM = {0xD3C764, 0xD3C7A0}, --)
                    GamatotoAM = {0xD3C7A4, 0xD3C7E0}, --)
                    Ticket = {0xC6BA60, 0xC6BA6C, 0x9E2B2C, 0x9E2B48, 0x9E3460, 0x9E346C} --)
                },
                CatMenu = {
                    UnlockAll = {0xA05BB0, 0xA06828}, --)
                    DeUnlockAll = {0xA05BB4, 0xA0682C}, --)
                    MaxAll = {0xA06830, 0xA08124}, --)
                    FormAll = {0xCE45E8, 0xCE5260}, --)
                    FormAllT = {0xCE5264, 0xCE5EDC}, --)
                    FormReset = {0xCE45E8, 0xCE5EDC}, --)
                },
                OtherMenu = {
                    FreeStarterPack = {0x9E2558, 0x9E2558}, --)
                    RemoveAd = {0xD3F65C, 0xD3F65C}, --)
                }
            },
            Menus = {
                InGame = {"★[►⚡ ᴀᴜᴛᴏ ᴡɪɴ◄]★", "★[►🏰 ɪɴғɪɴɪᴛʏ ʙᴀsᴇ ʜᴘ◄]★", "★[►♾️ ɪɴғɪɴɪᴛʏ ᴇɴᴇʀɢʏ◄]★", "★[►🧹 ᴄʟᴇᴀʀ ᴀʟʟ◄]★", "★[►💎 ᴀʟʟ ᴛʀᴇᴀsᴜʀᴇ◄]★"},
                Lobby = {"★[►🍖 ᴄᴀᴛ ғᴏᴏᴅ◄]★", "★[►📚 xᴘ◄]★", "★[►🎒 ɪᴛᴇᴍs◄]★", "★[►👁️ ᴄᴀᴛ ᴇʏᴇs◄]★", "★[►🎟️ ᴄᴀᴛ ᴛɪᴄᴋᴇᴛs◄]★", "★[►💊 ᴄᴀᴛᴀᴍɪɴs◄]★", "★[►🪨 ᴍᴀᴛᴇʀɪᴀʟs◄]★", "★[►⚙️ ᴀᴅᴠᴀɴᴄᴇ ᴍᴀᴛᴇʀɪᴀʟs◄]★", "★[►🪙 ɴᴘ◄]★"},
                Other = {"★[►🎁 ғʀᴇᴇ sᴛᴀʀᴛᴇʀ ᴘᴀᴄᴋ◄]★", "★[►🚫 ʀᴇᴍᴏᴠᴇ ᴘᴏᴘ ᴜᴘ◄]★", "★[►🍎 ᴄᴀᴛ ғʀᴜɪᴛ ɢɪᴠᴇʀ◄]★", "★[►🔮 ᴛᴀʟᴇɴᴛ ᴏʀʙ ɢɪᴠᴇʀ◄]★"},
                Cat = {"★[►🔓 ᴜɴʟᴏᴄᴋ ᴀʟʟ◄]★", "★[►⬆️ ᴍᴀx ʟᴇᴠᴇʟ ᴀʟʟ◄]★", "★[►✨ ᴛʀᴜᴇ ғᴏʀᴍ ᴀʟʟ◄]★"},
            },
            valueMapping = {4294967296,8589934592,12884901888,17179869184,21474836480,25769803776,30064771072,34359738368,38654705664,42949672960},
            SeedMapping = {0, 2, 4, 6, 8, 10, 12} 
        }
    },
}

return gameData
