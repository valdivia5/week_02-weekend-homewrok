require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../song.rb')
require_relative('../room.rb')
require_relative('../guest.rb')

class TestRooom < Minitest::Test

  def setup
    @room1 = Room.new("Reagge room", [@song1], 10)
    @room2 = Room.new("Disco", [@song2], 10)
    @room3 = Room.new("Classical music room", [@song3], 10)
    @song1 = Song.new("Mr Moneyman")
    @song2 = Song.new("Don’t Stop 'Til You Get Enough")
    @song3 = Song.new("Ride Of The Valkyries")
    @guest1 = Guest.new("Concha de Oro", 30000)
    @guest2 = Guest.new("Kaputes Arschloch", -6000)
    @guest3 = Guest.new("Kankertrut", 10)


  end

def test_get_name_of_the_rooms
  assert_equal("Reagge room", @room1.name())
end

def test_get_song_list_of_room_number_1
  assert_equal(1, @room1.songs_list().length())
end

def test_add_guests_to_the_rooms
@room1.add_guest_to_room(@guest1)
assert_equal(1, @room1.guests_list().length())
end

def test_remove_guests_from_the_rooms
@room1.add_guest_to_room(@guest1)
@room1.add_guest_to_room(@guest2)
@room1.add_guest_to_room(@guest3)
@room1.delete_guest_from_room(@guest1)
assert_equal(2, @room1.guests_list().length())
end

def test_add_songs_to_the_rooms
  @room1.add_song_to_room(@song1)
  @room1.add_song_to_room(@song2)
  assert_equal(3, @room1.songs_list().length())
end






end
