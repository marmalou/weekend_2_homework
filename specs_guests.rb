require('minitest/autorun')
require('minitest/rg')

require_relative('../guests.rb')
require_relative('../rooms.rb')
require_relative('../songs.rb')
require('minitest/autorun')
require('minitest/rg')

require_relative('../guests.rb')
require_relative('../rooms.rb')
require_relative('../songs.rb')




class TestGuests < MiniTest::Test

def setup
@guest1 = Guests.new("Andy", 26, 50, "Lose Yourself")
@room1 = Rooms.new("Main Room")
@song2 = Songs.new("Eminem", "Lose Yourself")

end

def test_guest_name
 assert_equal("Andy", @guest1.name)
end

def test_guest_age
 assert_equal(26, @guest1.age)
end

def test_wallet
 assert_equal(50, @guest1.wallet)
end

def test_entry_fee
 assert_equal("Please enter", @guest1.entry_fee)
end
end 
