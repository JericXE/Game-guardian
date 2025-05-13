-- GameDataModule.lua

gameData = {
   ["14.3.0"] = {
        ["32-bit CBB"] = {
            OffsetsForDetection = 0xC58BB0,
            Offsets = {
                InGameMenu = {
                    AutoWin = {0xCBF404, 0xCBF404}, --0
                    InfinityHp = {0xCB398C, 0xCB398C}, --0
                    InfinityEnergy = {0xC5DBEC, 0xC5DBF0}, --0
                    UnlockAllMap = {0xC5E1C4, 0xC5E1E4}, --0
                    UnlockAllTreasure = {0xC5EA10, 0xC5F1DC}, --0
                },
                LobbyMenu = {
                    Food = {0xC5DB40, 0xC5DB44}, --0
                    EXP = {0xC5DC50, 0xC5DC54}, --0
                    Items = {0xC7F484, 0xC7F4B0}, --0
                    CatEye = {0xFB2D14, 0xFB2D40}, -- 0
                    NP = {0xC5DC58, 0xC5DC5C}, --0
                    GamatotoV = {0xFB2D44, 0xFB2D58}, --0 
                    GamatotoM = {0xFB2D5C, 0xFB2D98}, --0
                    GamatotoAM = {0xFB2D9C, 0xFB2DC8}, --0
                    Ticket = {0xEE2094, 0xEE20A0, 0xC59180, 0xC5919C, 0xC59AA8, 0xC59AB4}, --0 
                },
                CatMenu = {
                    UnlockAll = {0xC7C1E4, 0xC7CE60}, --0
                    DeUnlockAll = {0xC7C1E8, 0xC7CE64}, --0
                    MaxAll = {0xC7CE68, 0xC7E75C}, --0
                    FormAll = {0xF5AC0C, 0xF5B884}, --0
                    FormAllT = {0xF5B888, 0xF5C500}, --0
                    FormReset = {0xF5AC0C, 0xF5C500}, -- 0
                },
                OtherMenu = {
                    FreeStarterPack = {0xC58BB0, 0xC58BB0}, -- 0
                    RemoveAd = {0xFB5C54, 0xFB5C54}, -- 0
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
        ["64-bit CBB"] = {
            OffsetsForDetection = 0xB7F78C, --p
            Offsets = {
                InGameMenu = {
                    AutoWin = {0xC06B50, 0xC06B50}, --p
                    InfinityHp = {0xBFB0D8, 0xBFB0D8}, --p
                    InfinityEnergy = {0xB88E80, 0xB88E84}, --p
                    UnlockAllMap = {0xB89554, 0xB89574}, -- p
                    UnlockAllTreasure = {0xB89DA0, 0xB8A56C}, --p
                },
                LobbyMenu = {
                    Food = {0xB88DA0, 0xB88DA4}, --p
                    EXP = {0xB88EF8, 0xB88EFC}, --p
                    Items = {0xBC6B98, 0xBC6BC4}, --p
                    CatEye = {0xF78974, 0xF789A0}, -- p
                    NP = {0xB88F00, 0xB88F04}, --p
                    GamatotoV = {0xF789A4, 0xF789B8}, --p
                    GamatotoM = {0xF789BC, 0xF789F8}, --p
                    GamatotoAM = {0xF789FC, 0xF78A38}, --p
                    Ticket = {0xE700C4, 0xE700D0, 0xB800D8, 0xB800F4, 0xB80D38, 0xB80D44}, --p 
                },
                CatMenu = {
                    UnlockAll = {0xBC38F0, 0xBC4568}, --p
                    DeUnlockAll = {0xBC38F4, 0xBC456C}, --p
                    MaxAll = {0xBC4570, 0xBC5E64}, --p
                    FormAll = {0xEEA678, 0xEEB2F0}, --p
                    FormAllT = {0xEEB2F4, 0xEEBF6C}, --p
                    FormReset = {0xEEA678, 0xEEBF6C}, -- p
                },
                OtherMenu = {
                    FreeStarterPack = {0xB7F78C, 0xB7F78C}, -- p
                    RemoveAd = {0xF7E4B8, 0xF7E4B8}, -- p
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
