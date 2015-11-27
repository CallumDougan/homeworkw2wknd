require_relative ('hotel_class')
require_relative('room_class')
# binding.pry;''
hotel = Hotel.new("Barry",4,4)
puts hotel.single_rooms
hotel.report_capacity