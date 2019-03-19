def nyc_pigeon_organizer(data)
	pigeon_list = {}
	data.each do |att, info|
		info.each do |key, name|
			name.each do |k|
				if !pigeon_list[k]
					pigeon_list[k] = {}
				end
				if !pigeon_list[k][att]
					pigeon_list[k][att] = []
				end
			end
		end
	end

	pigeon_list.each do |name, stats|
		stats.each do |key, value|
			data.each do |att, info|
				if key == att
					info.each do |x, pigg|
						if pigg.include?(name)
							pigeon_list[name][key] << x.to_s
						end
					end
				end
			end
		end
	end
	pigeon_list
end
