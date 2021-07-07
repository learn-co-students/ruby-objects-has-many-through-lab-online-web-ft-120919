class Genre
  @@all = []
  attr_accessor  :name

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    song_collection = self.songs
    artists = song_collection.collect {|s| s.artist}
    artists.uniq
  end

end
