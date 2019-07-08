require('minitest/autorun')
require('minitest/rg')

require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

class TestRooms < MiniTest::Test

def setup

 @room1 = Rooms.new("Main Room")
 @room2 = Rooms.new("Side Room")

 @song1 = Songs.new("Michael Jackson", "Smooth Criminal")
 @song2 = Songs.new("Eminem", "Lose Yourself")

 @guest1 = Guests.new("Andy", 26, 50, "Lose Yourself")
end

def test_room_name
 assert_equal("Main Room", @room1.room_type)
end

def test_guests_in_room
 assert_equal(0, @room1.count_guests_in_room)
end

def test_check_in_guests
 @room1.check_in_guests(@guest1)
 assert_equal(1, @room1.count_guests_in_room)
end

def test_check_out_guests
 @room1.check_out_guests(@guest1)
 assert_equal(0, @room1.count_guests_in_room)
end

def test_add_song_to_room
  @room1.add_song_to_room(@song2)
 assert_equal("Lose Yourself", @room1.song_in_room)
end

def test_song_in_room
 assert_nil(nil, @room1.song_in_room)
end

def test_max_space_in_room
 assert_equal("Please enter", @room1.max_space_in_room)
end




endrequire('minitest/autorun')
require('minitest/rg')

require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

class TestRooms < MiniTest::Test

def setup

 @room1 = Rooms.new("Main Room")
 @room2 = Rooms.new("Side Room")

 @song1 = Songs.new("Michael Jackson", "Smooth Criminal")
 @song2 = Songs.new("Eminem", "Lose Yourself")

 @guest1 = Guests.new("Andy", 26, 50, "Lose Yourself")
end

def test_room_name
 assert_equal("Main Room", @room1.room_type)
end

def test_guests_in_room
 assert_equal(0, @room1.count_guests_in_room)
end

def test_check_in_guests
 @room1.check_in_guests(@guest1)
 assert_equal(1, @room1.count_guests_in_room)
end

def test_check_out_guests
 @room1.check_out_guests(@guest1)
 assert_equal(0, @room1.count_guests_in_room)
end

def test_add_song_to_room
  @room1.add_song_to_room(@song2)
 assert_equal("Lose Yourself", @room1.song_in_room)
end

def test_song_in_room
 assert_nil(nil, @room1.song_in_room)
end

def test_max_space_in_room
 assert_equal("Please enter", @room1.max_space_in_room)
end




end
