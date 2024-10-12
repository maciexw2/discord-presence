
CreateThread(function()
    while true do 
        SetDiscordAppId(Config.appID)
        local players = #GetActivePlayers()
        SetRichPresence('Jest wokół '..players..(players==1 and ' graczy' or ' graczy'))
        local id = PlayerId()
        SetDiscordRichPresenceAsset('logo')
        SetDiscordRichPresenceAssetText('Nick - '..GetPlayerName(id))

        SetDiscordRichPresenceAssetSmall('logo')
        SetDiscordRichPresenceAssetSmallText('ID - '..GetPlayerServerId(playerId))
        SetDiscordRichPresenceAction(0, "Discord", Config.discordLink)
        Citizen.Wait(22000)
    end
end)

