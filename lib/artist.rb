class Artist
 attr_accessor :name, :genre

def initialize(name)
  @name = name
  @song = []
end

def add_song_by_name(name)
   song = Song.new(name)
   @song << song
   song.artist = self
end

def songs
  @songs
end

def song_count
  @songs.count
end


end
