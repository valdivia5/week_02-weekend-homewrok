class Room
  attr_reader :name, :songs_list, :occupancy, :guests_list

  def initialize(name, songs_list, occupancy)
    @name = name
    @songs_list = songs_list
    @occupancy = occupancy
    @guests_list = []
  end

def add_guest_to_room(guest)
 @guests_list.push(guest)
end

def delete_guest_from_room(guest)
 @guests_list.delete(guest)
end

def add_song_to_room(name_of_the_song)
 @songs_list.push(name_of_the_song)
end

end
