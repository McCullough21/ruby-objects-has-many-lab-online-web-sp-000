class Artist
 attr_accessor :name, :genre

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
   song.artist = self
end

def songs
  @songs
end

def song_count
  @songs.count
end


end
