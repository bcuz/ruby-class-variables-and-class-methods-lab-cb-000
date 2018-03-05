class Song

  attr_accessor :name, :artist, :genre

  @@count = 0

  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end
end
