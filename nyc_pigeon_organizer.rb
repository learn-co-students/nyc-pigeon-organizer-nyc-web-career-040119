require 'pry'
# def nyc_pigeon_organizer(data)
#   bird_names = []
#   pigeon_list = {}
#   data.each do |attrib, value|
#     value.values.each do |val_array|
#       val_array.collect { |x| bird_names << x}
#     end
# end
#   bird_names.flatten.each do |names|
#     pigeon_list[names] = {:color => [], :gender => [], :lives => []}
#   end 


#   data[:color].each do |attrib, value|
#     value.each do |name|
#       if data[:color][attrib].include?(name)
#         pigeon_list[name][:color] << attrib.to_s
#       end
#     end
#   end
#   data[:gender].each do |attrib, value|
#     value.each do |name|
#       if data[:gender][attrib].include?(name)
#         pigeon_list[name][:gender] << attrib.to_s
#       end
#     end
#   end
#   data[:lives].each do |attrib, value|
#     value.each do |name|
#       if data[:lives][attrib].include?(name)
#         pigeon_list[name][:lives] << attrib 
#       end
#     end
#   end
#   pigeon_list
# end
    
new_pigeon_data = {}

     data.each do |attribute_category, attribute_data_hash|
      attribute_data_hash.each do |attribute, name_array|
        name_array.each do |name|
          new_pigeon_data[name] = {:color => [], :gender => [], :lives => []}  #establish top tier
        end
      end
    end
    data[:color].each do |attribute, name_array|
      name_array.each do |name|
        if data[:color][attribute].include?(name)
          new_pigeon_data[name][:color] << attribute.to_s
        end
      end
    end
    data[:gender].each do |attribute, name_array|
      name_array.each do |name|
        if data[:gender][attribute].include?(name)
          new_pigeon_data[name][:gender] << attribute.to_s
        end
      end
    end
    data[:lives].each do |attribute, name_array|
      name_array.each do |name|
        if data[:lives][attribute].include?(name)
          new_pigeon_data[name][:lives] << attribute
        end
      end
    end

    new_pigeon_data
end