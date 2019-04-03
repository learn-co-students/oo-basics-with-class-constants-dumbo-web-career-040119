class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  # When we initialize a new Shoe, it will be given a brand. We want to add that
  # brand to the BRANDS array, then do BRANDS.uniq! to eliminate any repeats.
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
