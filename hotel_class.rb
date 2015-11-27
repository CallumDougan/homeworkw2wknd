class Hotel

attr_reader :name, :single_rooms, :double_rooms

  def initialize (name, singlerooms, doublerooms)
    @name = name
    @single_rooms = Array.new(singlerooms)
    @double_rooms = Array.new(doublerooms)
  end

end