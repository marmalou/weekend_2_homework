class Room

  attr_reader :room_type, :song_in_room

  def initialize(room_type)

   @room_type = room_type
   @guests_in_room = []
   @song_in_room = []

  end

  def count_guests_in_room
   @guests_in_room.length
  end

  def check_in_guests(guest)
   @guests_in_room << guest
  end

  def check_out_guests(guest)
   @guests_in_room.delete(guest)
  end

  def song_in_room
   @song_in_room.first
  end

  def add_song_to_room(song)
   @song_in_room << song.song_name
  end

  def max_space_in_room
   if @song_in_room.length >= 50
     return "Room capacity reached!"
   else
     return "Please enter"
   end
  end


  end
