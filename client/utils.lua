function loadAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

function loadModel(model)
	if IsModelInCdimage(model) then
		while not HasModelLoaded(model) do
			RequestModel(model)
			Citizen.Wait(5)
		end
	end
end

local function MakePlural(type, amount)
    if not amount or amount > 1 then
        return type .. 's'
    end
    return type
end

function GetFormattedTimeFromSeconds(seconds)
    local days = 0
    local hours = Utils:Round(seconds / 3600, 0)
    if hours >= 24 then
        days = math.floor(hours / 24)
        hours = math.ceil(hours - (days * 24))
    end

    local timeString
    if days > 0 or hours > 0 then
        if days > 1 then
            if hours > 0 then
                timeString = string.format('%d %s and %d %s', days, MakePlural('day', days), hours, MakePlural('hour', hours))
            else
                timeString = string.format('%d %s', days, MakePlural('day', days))
            end
        else
            timeString = string.format('%d %s', hours, MakePlural('hour', hours))
        end
    else
        local minutes = Utils:Round(seconds / 60, 0)
        timeString = string.format('%d %s', minutes, MakePlural('minute', minutes))
    end
    return timeString
end