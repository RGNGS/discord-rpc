if file.Find("lua/bin/gmcl_gdiscord_*.dll", "GAME")[1] == nil then return end

require("gdiscord")

local intCheck = 60
local strAppID = "810178281956573244"
local intStart = intStart || -1

local function DiscordUpdate()
    DiscordRPCTime("CityRP", "Oscar Sabato", "default", game.GetMap(), player.GetCount(), (game.MaxPlayers() || "48"), intStart)
end

hook.Add("Initialize", "RGngs.DiscordRPC", function()
    intStart = os.time()
    DiscordRPCInitialize(strAppID)
    DiscordUpdate()

    timer.Create("RGngs.DiscordRPC", intCheck, 0, DiscordUpdate)
end)
