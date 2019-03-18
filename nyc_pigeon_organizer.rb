require "pry"

#===input===
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

def nyc_pigeon_organizer(data)
  new_hash = {}

    data.each do |key, hash|
      hash.each do |attribute, birds|
        birds.each do |bird|
          # binding.pry
          if new_hash[bird].nil? #checks if hash key exist, return nil if it doesn't
            attribute_array = []
            attribute_array << attribute.to_s
            new_hash[bird] = {key => attribute_array}
          elsif !new_hash[bird].nil? && new_hash[bird][key].nil? #checks if hash key already exist && if new hash in hash key exist
            attribute_array = []
            attribute_array << attribute.to_s
            new_hash[bird][key] = attribute_array
          elsif !new_hash[bird].nil? && !new_hash[bird][key].nil? #checks if both hash key and they inner hash exist
            new_hash[bird][key] << attribute.to_s
          end #if
        end #birds
      end #hash
    end #data
  new_hash
end

#===second attempt===
# def nyc_pigeon_organizer(data)
#   # write your code here!
#   pigeon_list = {}
#   pigeon_names = []
#
#   data.each do |key_hash, value_hash|
#     value_hash.each do |key, names|
#       names.each do |name|
#         pigeon_names << name
#         unique_pigeons = pigeon_names.uniq
#
#
#         unique_pigeons.each_with_index do |pigeon, index|
#           value_array = []
#           value_array = value_hash.keys
#           pigeon_list[unique_pigeons[index]] = value_array.join(", ")
#           binding.pry
#         end #unique_pigeons
#         #
#         # pigeon_list.each do |pigeon|
#         #   binding.pry
#         #   if pigeon_list.has_key?(key_hash)
#         #     pigeon_list[key_hash] << key_hash.keys
#         #   else
#         #     pigeon_list[key_hash] = names
#         #     key_array = []
#         #     key_array << key_hash.keys
#         #     pigeon_list[key_hash] = key_array
#         #   end
#         # end #pigeon
#
#       end #names
#     end #value_hash
#   end #data
#   binding.pry
#   pigeon_list
# end

#===first attempt===
# def nyc_pigeon_organizer(data)
#   # write your code here!
#   pigeon_list = {}
#   pigeon_names = []
#
#
#   #create a new key of pigeon name in pigeon_list
#   #go through data hash push all names to pigeon_names and return only uniq
#   #check datahash if name matches pigeon_names.uniq and push hash to another array
#   data.each do |key_hash, value_hash|
#     value_hash.each do |key, names|
#       names.each do |name|
#         pigeon_names << name
#
#         unique_pigeons = pigeon_names.uniq #new array of unique names, use pigeon_names.uniq[0] to go through array
#
#         unique_pigeons.each_with_index do |p_name, index|
#         # #each_with_index has_key? && if name matches, then set todo
#         # #pigeon_list[:pigeon_names[i]][key] = value
#         # #if hash contains key
#         binding.pry
#           # if !pigeon_list.has_key?(value_hash)
#           if names.include?(unique_pigeons[index])
#             value_array = []
#             value_array << value_hash.keys.join(", ")
#             pigeon_list[unique_pigeons[index]] = {key_hash => value_array}
#             # binding.pry
#           end
#           # binding.pry
#         end
#
#       end #names
#     end #value_hash
#   end #data
#
#
#   # binding.pry
#   pigeon_list
# end

#===output===
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
