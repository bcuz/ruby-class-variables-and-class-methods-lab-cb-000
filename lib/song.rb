class Song

  attr_accessor :name, :artist, :genre

  @@count = 0

  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    ans = {}
    @@genres.each do |i|
      # need it to start at 0 and increment

      # if ans hash doesnt have the key,
      # make it a key and set it to 0
      if !ans.has_key? i
        ans[i] = 0
      else
        ans[i] += 1
      end
    end
    ans
  end
end
