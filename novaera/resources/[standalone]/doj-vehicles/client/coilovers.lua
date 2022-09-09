
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('doj:client:coiloverMenu', function() 
    local playerPed	= PlayerPedId()
    if IsPedSittingInAnyVehicle(playerPed) then
		QBCore.Functions.Notify("Cannot adjust coilovers while inside vehicle", "error", 3500)
        ClearPedTasks(playerPed)
        return
    end
    local coords = GetEntityCoords(playerPed)
    local vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 3.0, 0, 71)
    local plate = GetVehicleNumberPlateText(vehicle)
    if vehicle ~= nil then
        local tire = GetClosestVehicleTire(vehicle)
        if tire ~= nil then 
            QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
                if HasItem then
                    if Config.isVehicleOwned then
                        QBCore.Functions.TriggerCallback('qb-garage:server:checkVehicleOwner', function(owned)
                            if owned then
                                coiloverMenu()
                                TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_KNEEL", 0, true) 
                            else
                                QBCore.Functions.Notify("Nobody owns this vehicle", "error", 3500)
                            end
                        end, plate)
                    else
                        coiloverMenu()
                        TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_KNEEL", 0, true) 
                    end
                else
                    QBCore.Functions.Notify("You are missing coilover wrenches", "error", 3500)
                end
            end, 'coilover_wrenches') 
        else
            QBCore.Functions.Notify("Move closer to a wheel", "error", 3500)
        end
    end
end)

local wheels = {
    "wheel_lf",
    "wheel_rf",
    "wheel_lm1",
    "wheel_rm1",
    "wheel_lm2",
    "wheel_rm2",
    "wheel_lm3",
    "wheel_rm3",
    "wheel_lr",
    "wheel_rr",
}
exports['qb-target']:AddTargetBone(wheels, {
    options = {
        {
            event = "doj:client:coiloverMenu",
            icon = "fas fa-wrench",
            label = "Adjust Coilovers",
            item = 'coilovers',
        },
    },
    distance = 1.5
})

RegisterNetEvent('doj:client:applyCoilovers', function(args) 
    local args = tonumber(args)
    local playerPed	= PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 3.0, 0, 71)
    SetVehicleModKit(vehicle, 0)
    coiloverMenu()
	if args == 1 then 
        SetVehicleMod(vehicle, 15, 4, false)
    elseif args == 2 then 
        SetVehicleMod(vehicle, 15, 0, false)
    elseif args == 3 then 
        SetVehicleMod(vehicle, 15, 1, false)
    elseif args == 4 then 
        SetVehicleMod(vehicle, 15, 2, false)
    elseif args == 5 then
        SetVehicleMod(vehicle, 15, 3, false)
    else
        exports['qb-menu']:closeMenu()
        CurrentVehicleData = QBCore.Functions.GetVehicleProperties(vehicle)
        TriggerServerEvent('updateVehicle', CurrentVehicleData)
    end
end)

function coiloverMenu()
    exports['qb-menu']:openMenu({
		{
            header = "Coilover Menu",
            txt = "adjust vehicle height",
            isMenuHeader = true
        },
        {
            header = "Stock",
            txt = "",
            params = {
                event = "doj:client:applyCoilovers",
				args = 1
            }
        },
        {
            header = "Stage 1",
            txt = "",
            params = {
                event = "doj:client:applyCoilovers",
				args = 2
            }
        },
		{
            header = "Stage 2",
            txt = "",
            params = {
                event = "doj:client:applyCoilovers",
				args = 3
            }
        },
        {
            header = "Stage 3",
            txt = "",
            params = {
                event = "doj:client:applyCoilovers",
				args = 4
            }
        },
        {
            header = "Stage 4",
            txt = "",
            params = {
                event = "doj:client:applyCoilovers",
				args = 5
            }
        },
        {
            header = "Close",
            txt = "",
            params = {
                event = "doj:client:applyCoilovers",
				args = 6
            }
        },
    })
end
