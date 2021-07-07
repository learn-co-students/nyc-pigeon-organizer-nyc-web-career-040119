require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key,hash|
  hash.each do |colour,pigeons|
    pigeons.each do |pigeon|
    pigeon_list[pigeon] ||= {}
    #binding.pry
    pigeon_list[pigeon][key] ||= []
    pigeon_list[pigeon][key].push(colour.to_s)
   # binding.pry
  end
  end 
end 
pigeon_list
end


