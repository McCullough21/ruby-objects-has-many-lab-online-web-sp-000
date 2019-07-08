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
  song = Song.new(song)
  @songs << song
  song.artist = self
end
def songs
  @songs
end

def self.song_count
  Artist.songs.count
end


end
