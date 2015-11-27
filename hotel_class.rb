require_relative('room_class')
require_relative('guest_class')
require_relative('accountant')

class Hotel

attr_reader :name, :single_rooms, :double_rooms, :day

  def initialize (name, singlerooms, doublerooms)
    @name = name
    @single_rooms = Array.new(singlerooms)
    @double_rooms = Array.new(doublerooms)
    @day = 0
  end

  def report_capacity
    total_rooms = [@single_rooms, @double_rooms].flatten
    occupied_rooms = total_rooms.compact    
    puts "Remaining capacity is #{total_rooms.length - occupied_rooms.length}/#{total_rooms.length}"
  end

  def day_ticker
    @day = @day + 1
    puts "Day #{@day}:"
  end

end