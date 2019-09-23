require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../song.rb')
require_relative('../room.rb')


class TestBar < Minitest::Test

  def setup
    @bar1 = Bar.new(1000, [@room1, @room2, @room3])
    @room1 = Room.new("Reagge room", [@song1], 10)
    @room2 = Room.new("Disco", [@song2], 10)
    @room3 = Room.new("Classical music room", [@song3], 10)
    @song1 = Song.new("Mr Moneyman")
    @song2 = Song.new("Don’t Stop 'Til You Get Enough")
    @song3 = Song.new("Ride Of The Valkyries")


  end

def test_till_has_money
  assert_equal(1000, @bar1.total_till())
end


def test_get_number_of_rooms__return_3
  assert_equal(3, @bar1.rooms().length())
end












end
