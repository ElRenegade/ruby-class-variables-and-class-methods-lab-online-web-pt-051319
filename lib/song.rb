class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :artist, :genre, :name

  def initialize(name, artist, genre)
    @artist = artist
    @genre = genre
    @name = name
    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each{|g| if genre_count[g]
      genre_count[g] += 1
    else
      genre_count[g] = 1
    end}
    genre_count
  end

  def self.artist_count
    total_artists={}
    @@artists.inject{|k, v| v[k]+=1; v}
  end

  def self.count
    @@count
  end
end
