-- GameDataModule.lua

gameData = {
    ["14.4.0] = {},
    ["14.3.0"] = {
        ["32-bit CBB"] = {
            
        },
        ["64-bit CBB"] = {
            
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
                    Speed = {0xAAA428, 0xAAA428},
                    CatFruit = {0x2069FAD94, 0x2069FAE74},
                    RemoveAd = {0xAAA428, 0xAAA428},
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
            
        }
    },
}

return gameData
