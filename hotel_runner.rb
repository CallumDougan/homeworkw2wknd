require_relative ('hotel_class')
require_relative('room_class')
require_relative('guest_class')
require_relative('accountant')

require 'pry-byebug'

sing_1 = Room.new('single')
sing_2 = Room.new('single')
sing_3 = Room.new('single')
sing_4 = Room.new('single')
doub_1 = Room.new('double')
doub_2 = Room.new('double')
doub_3 = Room.new('double')
doub_4 = Room.new('double')

hotel = Hotel.new("Barry", sing_1, sing_2, sing_3, sing_4, doub_1, doub_2, doub_3, doub_4)
accountant = Accountant.new(hotel)
puts hotel.rooms




guest1 = Guest.new("Bill", 7, 'double')
hotel.check_in(guest1)
# binding.pry
accountant.day_ticker

accountant.day_tally(hotel)
accountant.check_out_check(hotel)
# hotel.check_out(guest1)
puts sing_1.occupier
hotel.report_capacity
puts hotel.occupied_rooms