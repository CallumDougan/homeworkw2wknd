require_relative('room_class')
require_relative('hotel_class')

class Guest

  attr_accessor :name, :stay, :room_type

  def initialize (name, stay, room_type)
    @name = name
    @stay = stay
    @room_type = room_type
  end

  def name
    @name
  end
end