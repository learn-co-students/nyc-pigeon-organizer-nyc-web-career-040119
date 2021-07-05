require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, hash|
    hash.each do |attribute, birds|
      birds.each do |bird|
        if new_hash[bird].nil?
          attribute_array = []
          attribute_array << attribute.to_s
          new_hash[bird] = {key => attribute_array}
        elsif !new_hash[bird].nil? && new_hash[bird][key].nil?
          attribute_array = []
          attribute_array << attribute.to_s
          new_hash[bird][key] = attribute_array
        elsif !new_hash[bird].nil? && !new_hash[bird][key].nil?
          new_hash[bird][key] << attribute.to_s
        end
      end
    end
  end
  new_hash
end
