require "pry"
def nyc_pigeon_organizer(data)
pigeon_list = {}
pigeon_names = []
pigeon_traits = []
  data.each do |trait,attribute|
    pigeon_traits << trait
    pigeon_traits.uniq!
    attribute.each do |att_name,pigeons|
      pigeons.each do |name|
        pigeon_names << name
        pigeon_names.uniq!
      end
    end
  end
# at this point we have a list of all
#binding.pry



pigeon_names.each do |pigeon_name|
  pigeon_info = {}

  data.each do |trait,attribute|
    trait_array = []
    trait_hash = {trait => trait_array}

    attritube.each do |att_name,pigeons|

      pigeons.each do |name|
        if name == pigeon_name
          trait_array << att_name.to_s
          binding.pry
        end
      end
    end
  end
end









end #THE END