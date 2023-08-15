local isOnDisplay = false

RegisterNetEvent('rc_alert:startAlert')
AddEventHandler('rc_alert:startAlert', function(time, title, text)
	

	if isOnDisplay == false then
		isOnDisplay = true

		SendNUIMessage({
			type = "ui",
			display = true,
			time = time,
			title = title,
			text = text,
		})

		Citizen.Wait(time)
		isOnDisplay = false
	end

    
end)

