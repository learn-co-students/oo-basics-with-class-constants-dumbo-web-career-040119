require 'pry'
class Shoe

  #attr_accessor is our getter/setter creators currently we are creating color, size , material and condition
  #attr_reader contains our brand which only allows us to read our brand
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

#BRANDS is our constant class, we know because it is in ALL caps. It will contain the brands
  BRANDS =[]

# Initialize is invoked with an instance is created. In this case when our brand is being created we are then adding it to our BRANDS array. Also we have our .uniq! method that is creating a new array with only uniq items or in our case brands. 
  def initialize(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.uniq!
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end
