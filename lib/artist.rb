class Artist 
  @@all = []
  @@songs = []
  attr_accessor :name, :song, :genre
  def initialize(name, song, genre)
    @name = name 
    @@all << name 
    @@songs << song 
    @genre = genre 
  end 
  
  def self.all
    @@all
  end 
  
  def new_song(song)
    @@songs << song
  end 
  
  def genres(genre)
    self.songs.collect do |song| 
      song.genre 
    end
  end 
  
end 