require_relative('room_class')
require_relative('hotel_class')

class Guest

  def initialize (name, stay)
    @name = name
    @stay = stay
  end

  def check_in(room_type)
    if room_type.downcase.chomp = 'single'
      if hotel.single_rooms.find != nil
        puts "Sorry, there are no single rooms available."
      else
        #replaces first nil value with @name
      end
    end
    if room_type.downcase.chomp = 'double'
      if hotel.double_rooms.find != nil
        puts "Sorry, there are no double rooms available."
      else
        #replaces first nil value with @name
      end
    end
  end

  def check_out
    self.delete
  end

end