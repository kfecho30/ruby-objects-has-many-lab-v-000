class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end
  def songs
    @songs
  end
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    song.artist_name = self.name
    @songs << song
  end
end
