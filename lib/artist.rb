class Artist
  attr_accessor :name
  @@songs = 0
  def initialize(name)
    @name = name
    @songs = []
  end
  def songs
    @songs
  end
  def add_song(song)
    song.artist = self
    @songs << song
    @@songs += 1
  end
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    song.artist_name = self.name
    @songs << song
    @@songs +=1
  end
  def song_count
    @@songs.length
  end
end
