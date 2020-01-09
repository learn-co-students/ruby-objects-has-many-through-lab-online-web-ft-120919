class Genre 
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name) 
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    Song.all.map do |song|
        song
  end 
end 

def artists 
  Song.all.map do |song|
        song.artist
end 
end 

end 