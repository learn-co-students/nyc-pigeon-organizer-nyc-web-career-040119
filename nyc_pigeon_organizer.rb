require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, attribute_hash|
    attribute_hash.each do |detail, name_array|
      name_array.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute] ||= []
        pigeon_list[name][attribute].push(detail.to_s)
        binding.pry
      end
    end
  end
  
  pigeon_list
end