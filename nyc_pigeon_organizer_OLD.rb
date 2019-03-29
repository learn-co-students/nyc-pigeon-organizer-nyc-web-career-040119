require "pry"
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  #names = []
  traits = []
  attributes = []
  #colors = []
  #genders = []
  #lives = []
  p_array = []


#collect the data and update pigeon_list with pigeons
  data.each do |trait,attribute|
    traits << trait
    #traits[trait] = {}
    attribute.each do |att_name,pigeons|
      attributes << att_name
      #traits[trait][att_name] = {}
        pigeons.each do |name|
          pigeon_list[name] = {}

        end

    end

  end
#binding.pry

  #pigeon_list.each do |p_name,p_traits|




  pigeon_list.each do |p_name, p_traits|

    p_name_a = Array(p_name)
    data.each do |trait, attribute|

      attribute.each do |att_name, pigeons|
        pigeons.each do |name|
          if name == p_name

              p_name_t = Array(trait)
              p_name_t << att_name.to_s
              p_name_a << p_name_t
              p_array << p_name_a
              p_array.uniq!

          end #if
        end #pigeons
      end #attribute
    end #data
  end # pigeon_list

#binding.pry

  all_pigeons_array = []

    pigeons_array = []
  p_array.each do |pigeon|

    pigeon.each do |p_info|
    
      if p_info == pigeon[0]
        break
      end
    i = 1
    while i < pigeon.length

      binding.pry
      i += 1
    end
    binding.pry
  end
end

end