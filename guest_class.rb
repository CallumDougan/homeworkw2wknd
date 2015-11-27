require_relative('room_class')
require_relative('hotel_class')

class Guest

  attr_accessor :name, :stay, :room_type

  def initialize (name, stay, room_type)
    @name = name
    @stay = stay
    @room_type = room_type
  end

#   def check_in(room_type)
#     puts @singleroom.class
#     if room_type == 'single'
#       if @hotel.rooms.find {singleroom.occupier.find {|occupier| occupier != nil}}
#         puts "Sorry, there are no single rooms available."
#       else
#         @hotel.single_rooms[self.room_assigner_single] = self
#       end
#     end
#     if room_type == 'double'
#       if @hotel.double_rooms.find {|room| room != nil}
#         puts "Sorry, there are no double rooms available."
#       else
#         @hotel.double_rooms[self.room_assigner_double] = self
#       end
#     end
#   end

#   def room_assigner_single
#     @hotel.single_rooms.index(@hotel.single_rooms.find { |room| room == nil})
#   end

#   def room_assigner_double
#     @hotel.double_rooms.index(@hotel.double_rooms.find { |room| room == nil})
#   end

#   def check_out(room_type)
# #make array of all rooms using .flatten, replace @guest with nil
#   # all_rooms = [@hotel.single_rooms, @hotel.double_rooms].flatten

#   # checkouter = all_rooms.index(all_rooms.find {|person| 
#   #   person == self 
#   #   })
#   # puts checkouter
#   # all_rooms[checkouter] = nil
#   end



end