require_relative ('hotel_class')
require_relative('room_class')
require_relative('guest_class')
# binding.pry;''
hotel = Hotel.new("Barry",4,4)
puts hotel.single_rooms.to_s
puts hotel.double_rooms.to_s
hotel.report_capacity
hotel.day_ticker
hotel.day_ticker