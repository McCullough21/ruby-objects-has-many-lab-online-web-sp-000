class Artist
 attr_accessor :name, :genre
@@all = []
def initialize(name)
  @name = name
  @@all << @name if !@@all.include(@name)
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
 total = 0
  @@all.each do |artist|
    total + artist.songs.count
  end
 total
end


end
