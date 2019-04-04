require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []
  

  def initialize(brand)
    @brand = brand
    if BRANDS.include?(brand) == false
      BRANDS << brand
    end
    #binding.pry
      # if BRANDS.length == 0
      #   BRANDS << brand
      # else 
      #   BRANDS.each do |item|
      #     #binding.pry
      #     if brand != item
      #       binding.pry
      #       BRANDS << brand
      #     end
      #   end
      # end
    
  end


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  
end