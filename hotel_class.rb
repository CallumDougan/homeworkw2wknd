require_relative('room_class')

class Hotel

attr_reader :name, :single_rooms, :double_rooms

  def initialize (name, singlerooms, doublerooms)
    @name = name
    @single_rooms = Array.new(singlerooms)
    @double_rooms = Array.new(doublerooms)
    #not including all the rooms, instead filling each with single empty entry?
  end

  def report_capacity
    total_rooms = [@single_rooms, @double_rooms]
    occupied_rooms = total_rooms.flatten.compact    
    puts total_rooms.length - occupied_rooms.length
  end

end