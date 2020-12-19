class Genre
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def songs
    Song.all
  end
  def self.all
    @@all
  end
  def artists
    Artist.all
  end
end
