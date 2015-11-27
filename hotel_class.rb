require_relative('room_class')
require_relative('guest_class')
require_relative('accountant')

class Hotel

attr_accessor :name, :rooms, :day

  def initialize (name, *rooms)
    @name = name
    @rooms = Array.new(rooms)
    @day = 0
  end

  def report_capacity
    occupied_rooms = @rooms.compact    
    puts "Remaining capacity is #{@rooms.length - occupied_rooms.length}/#{@rooms.length}"
  end

  def day_ticker
    @day = @day + 1
    puts "Day #{@day}:"
  end

  def check_in(guest)

    if guest.room_type == 'single'
      if assign_room == nil
        puts "Sorry, there are no single rooms available."
      else
        @rooms[assign_room].add_occupier(guest)
      end
    if guest.room_type == 'double'
      if assign_room == nil
        puts "Sorry, there are no double rooms available."
      else
        @rooms[assign_room].add_occupier(guest)
      end
    end
  end

    def check_out (guest)
      @rooms.each{ |room| 
        if room.occupier != nil && room.occupier == guest
          room.occupier = nil
        end
        }
    end


  end

  def assign_room
    @rooms.index(@rooms.find { |room| room.occupier == nil})
  end

end