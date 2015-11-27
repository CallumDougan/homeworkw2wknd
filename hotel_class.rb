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
    puts "There are #{@rooms.length - self.occupied_rooms.length} rooms open"
  end

  def day_ticker
    @day = @day + 1
    puts "Day #{@day}:"
  end

  def check_in(guest)
    if guest.room_type == 'single'
      if assign_room != nil
        @rooms[assign_room].add_occupier(guest)
        puts "Booking accepted for #{guest.name}."
      else
        puts "Sorry, there are no single rooms available."
      end
      if guest.room_type == 'double'
        if assign_room != nil
          @rooms[assign_room].add_occupier(guest)
          "Booking accepted for #{guest.name}."
        else
          puts "Sorry, there are no double rooms available."
         
        end
      end
    end
  end

  def occupied_rooms
    @rooms.select {|room| room.occupier != nil}
  end

  def check_out (guest)
    
    for room in self.occupied_rooms
      if room.occupier.name == guest.name
        room.occupier = nil
      end
    end
  end

  def assign_room
    @rooms.index(@rooms.find { |room| room.occupier == nil})
  end

end