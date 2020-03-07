webhooks = {_count = 0}

onEvent("GameDataLoaded", function(data)
	local now = os.time()
	if not data.webhooks or os.time() - data.webhooks[1] > 300000 then -- 5 minutes
		data.webhooks = {math.floor(os.time())}
	end

	local last = #data.webhooks
	for index = 1, webhooks._count do
		data.webhooks[last + index] = webhooks[index]
	end
	webhooks._count = 0
end)