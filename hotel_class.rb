require_relative('room_class')
require_relative('guest_class')
require_relative('accountant')

class Hotel

attr_accessor :name, :rooms

  def initialize (name, *rooms)
    @name = name
    @rooms = Array.new(rooms)
  end

  def report_capacity
    puts "There are #{@rooms.length - occupied_rooms.length} rooms open"
  end

  def check_in(guest)
    if guest.room_type == 'single'
      if assign_room(guest) != nil
        @rooms[assign_room(guest)].add_occupier(guest)
        puts "Booking accepted for #{guest.name}."
      else
        puts "Sorry, there are no single rooms available."
      end
    end

    if guest.room_type == 'double'
      if assign_room(guest) != nil
        @rooms[assign_room(guest)].add_occupier(guest)
        puts "Booking accepted for #{guest.name}."
      else
        puts "Sorry, there are no double rooms available."

      end
    end
  end


  def occupied_rooms
    @rooms.select {|room| room.occupier != nil}
  end

  def unoccupied_rooms
    @rooms.select {|room| room.occupier == nil}
  end

  def check_out (guest)
    for room in occupied_rooms
      if room.occupier.name == guest.name
        room.occupier = nil
      end
    end
    puts "#{guest.name} has checked out."
  end

  def assign_room (guest)
    unoccupied_rooms.index(unoccupied_rooms.find { |room| room.type == guest.room_type})
  end

end