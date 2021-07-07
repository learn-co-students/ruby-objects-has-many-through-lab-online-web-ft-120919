class Song
  attr_accessor :artist, :name, :genre
  @@all = []
  def initialize(n,a, g)
    @name=n
    @artist=a
    @genre =g
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end