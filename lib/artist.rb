class Artist
 attr_accessor :name, :songs, :genre

def initialize(name)
  @name = name
  @song = []
end

def add_song_by_name(name, genre)
   song = Song.new
   @song << song
   song.artist = self
end


end
