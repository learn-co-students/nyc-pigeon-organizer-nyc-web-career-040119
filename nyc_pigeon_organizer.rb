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
