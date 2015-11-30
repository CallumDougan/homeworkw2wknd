require_relative('hotel_class')
require_relative('room_class')
require_relative('guest_class')

class Accountant
attr_accessor :day

  def initialize(*hotel)
    @day = 1
    @hotels = hotel
  end

  def day_ticker(*hotel)
    @day += 1
    puts "Day #{@day}:"
  end


  def day_tally(*hotel)
    day_takings = 0
    #for each single/double room, add @rate to day_takings
    occupied_rooms = hotel.occupied_rooms
    occupied_rooms.each do
      if room.type == "single"
        day_takings += 1
      end
      if room.type = "double"
        day_takings += 2
      end
      end
      return day_takings
  end

    def leave_date(*hotel)

    hotel.occupied_rooms.each{|room| guest.stay == 0}

    end

  def check_out_check(hotel)

    
  end

end