--
-- @Projet: Jobmenu
-- @Createur: Hylex
--


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)

        if NetworkIsSessionStarted() then

            -- Send event to client & server
            TriggerServerEvent('ft_libs:OnClientReady')
            TriggerEvent('ft_libs:OnClientReady')

            -- tools thread
            MenuFrame()
            InstructionalButtonsFrame()

            -- Check player
            UpdatePlayerThread()
            Citizen.Wait(1000)

            -- Trigger
            CheckTriggerThread()
            ActiveTriggerThread()

            -- Marker
            CheckMarkerThread()
            ActiveMarkerThread()

            break

        end

    end
end)
