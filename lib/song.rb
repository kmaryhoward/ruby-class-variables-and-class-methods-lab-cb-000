class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@all_genres = []
  @@artists = []
  @@all_artists = []

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count +=1
    @@genres << genre
    @@all_genres << genre
    @@artists << artist
    @@all_artists << artist
  end

  def self.all_genres
    @@all_genres
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.all_artists
    @@all_artists
  end

  def self.genre_count
    self.all_genres.inject(Hash.new(0)) {|hash,genre| hash[genre] += 1; hash}
  end

  def self.artist_count
    self.all_artists.inject(Hash.new(0)) {|hash,artist| hash[artist] += 1; hash}
  end

end
