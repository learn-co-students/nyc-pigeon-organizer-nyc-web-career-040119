def nyc_pigeon_organizer(data)
  output = {}
  
  data.each do |key, value|
    value.each do |attribute, pigeons|
      pigeons.each do |pigeon|
        if !output.keys.include?(pigeon)
          output[pigeon] = {}
          if !output[pigeon].keys.include?(key)
            output[pigeon][key] = []
            output[pigeon][key].push(attribute.to_s)
          else
            output[pigeon][key].push(attribute.to_s)
          end
        else
          if !output[pigeon].keys.include?(key)
            output[pigeon][key] = []
            output[pigeon][key].push(attribute.to_s)
          else
            output[pigeon][key].push(attribute.to_s)
          end
        end
      end
      # if !output.keys.include?(pigeons)
      #   output[pigeons] = {}
      # end
    end
  end

  output
end