require('minitest/autorun')
require('minitest/rg')

require_relative('../songs.rb')
require_relative('../rooms.rb')

class TestSongs < MiniTest::Test

 def setup
   @song1 = Songs.new("Michael Jackson", "Smooth Criminal")
   @song2 = Songs.new("Eminem", "Lose Yourself")

   @room1 = Rooms.new("Main Room")
 end

 def test_song_name
   assert_equal("Smooth Criminal", @song1.song_name)
 end

 def test_artist_name
   assert_equal("Eminem", @song2.artist)
 end

end
