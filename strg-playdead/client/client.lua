local isStarted = false

RegisterCommand("playdead", function(source, args, rawCommand)
    playdead()
      
end, false)

function playdead()
    local playerPed = PlayerPedId()
    
    while true do
        Wait(0)
        if IsControlJustPressed(0, 38) then
            LoadAnimDict("random@dealgonewrong")
    TaskPlayAnim(playerPed, "random@dealgonewrong", "idle_a", 8.0, 8.0, -1, 1, 1.0, 0, 0, 0)
        end
    end
end

function LoadAnimDict(dict)
    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)

        while not HasAnimDictLoaded(dict) do
            Wait(1)
        end
    end
end