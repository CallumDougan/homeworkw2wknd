require_relative('hotel_class')

class Room

  

end


class SingleRoom < Room
  def initialize
    @rate = 1
    @number = hotel.single_rooms.index
  end
end

class DoubleRoom < Room
  def initialize
    @rate = 2
    @number = hotel.double_rooms.index
  end
end