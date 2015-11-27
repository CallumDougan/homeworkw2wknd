require_relative ('hotel_class')
require_relative('room_class')
require_relative('guest_class')
require 'pry-byebug'

sing_1 = SingleRoom.new()
sing_2 = SingleRoom.new()
sing_3 = SingleRoom.new()
sing_4 = SingleRoom.new()
doub_1 = DoubleRoom.new()
doub_2 = DoubleRoom.new()
doub_3 = DoubleRoom.new()
doub_4 = DoubleRoom.new()

hotel = Hotel.new("Barry", sing_1, sing_2, sing_3, sing_4, doub_1, doub_2, doub_3, doub_4)
puts hotel.rooms
# print hotel.rooms.to_s
hotel.day_ticker
hotel.day_ticker



guest1 = Guest.new("Bill", 7, 'single')
hotel.check_in(guest1)
# binding.pry

hotel.check_out(guest1)
print sing_1.occupier
hotel.report_capacity
print sing_1.occupier
print sing_2.occupier