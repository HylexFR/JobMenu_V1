--
-- @Projet: Jobmenu
-- @Createur: Hylex
--

--
-- PrintTable event
--
RegisterNetEvent("ft_libs:PrintTable")
AddEventHandler('ft_libs:PrintTable', function(value)

    print("---------[ft_libs : Debug]---------")
    PrintTable(value)
    print("-------------------------")

end)

--
-- Debug mod
--
RegisterNetEvent("ft_libs:DebugMode")
AddEventHandler('ft_libs:DebugMode', function(status)

    debugMode = status
    if debugMode == true then
        Citizen.Trace("[FT_LIBS] DEBUG MODE ENABLE")
    else
        Citizen.Trace("[FT_LIBS] DEBUG MODE DISABLE")
    end

end)
