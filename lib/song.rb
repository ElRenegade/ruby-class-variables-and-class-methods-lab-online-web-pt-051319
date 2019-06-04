class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :artist, :genre, :name

  def initialize(name, artist, genre)

    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist
    @@artists.uniq
  end

  def self.genre_count
    @@genres.inject(total_genres.new(0)){|k, v| v[k]+=1; v}
  end

  def self.artist_count
    total_artists={}
    @@artists.inject{|k, v| v[k]+=1; v}
  end

  def self.count
    @@count
  end
end
