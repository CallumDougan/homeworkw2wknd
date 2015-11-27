require_relative('hotel_class')
require_relative('guest_class')

class Room

  attr_accessor :rate, :number, :occupier

  def initialize
    @occupier = nil
  end

  def add_occupier(guest)
    @occupier = guest
  end

  def occupier
    name = @occupier
  end

end


class SingleRoom < Room
  
  def initialize
    @rate = 1
    @occupier = nil
  end
end

class DoubleRoom < Room
  def initialize
    @rate = 2
    @occupier = nil
  end
end