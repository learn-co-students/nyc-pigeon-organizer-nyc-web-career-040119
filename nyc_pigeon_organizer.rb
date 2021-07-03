def nyc_pigeon_organizer(pigeon_data)
  pigeon_data.each_with_object({}) do |(key, h), pigeon|
    h.each do |value, names|
      names.each do |name|
        pigeon[name] ||={}
        pigeon[name][key] ||=[]
        pigeon[name][key] << value.to_s
      end
    end
  end
end
