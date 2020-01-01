class Genre 
  attr_accessor :name, :song 
  @@all = [] 
  def initialize(name, song)
    @name = name 
    @song = song 
    @@all << self   
  end
  
  def song.all
    @@all 
  end 
  
  def songs
    self.collect do |genre|
      song.genre 
  end 
    
  
end 