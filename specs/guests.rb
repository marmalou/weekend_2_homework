class Guests

   attr_reader :name, :age, :wallet,  :favourite_song

   def initialize(name, age, wallet, favourite_song)

     @name = name
     @age = age
     @wallet = wallet
     @favourite_song = favourite_song

   end

   def entry_fee
     if @wallet <= 10
     return "Insufficient funds"
     else
     return "Please enter"
     end
   end


  def favourite_song
   if @favourite_song == @song_in_room
   return "Whoo!"
   else
   return "Meh!"
   end
  end
