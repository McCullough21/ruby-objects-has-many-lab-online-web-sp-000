class Artist
 attr_accessor :name, :genre

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
   song.artist = self
   @songs << song
end

def add_song_by_name(song)
  song = Song.new(name)
  @songs << song
  song.artist = self
end
def songs
  @songs
end

def song_count
  @songs.count
end


end
