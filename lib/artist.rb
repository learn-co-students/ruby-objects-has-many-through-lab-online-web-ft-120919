class Artist
     attr_accessor :name

     @@all = []
    # #name-- has a name
    def initialize(name)
        @name = name 
        @@all << self
    end 
    #.all --  knows about all artist instances
    def self.all
        @@all
    end
    #given a name and genre, creates a new song associated with that artist
    def new_song(name, genre)
        song = Song.new(name,self, genre)
        
    end

    # returns all songs associated with this Artist
    def songs
        Song.all.select{|song|song.artist == self}
    end

    # has many genres, through songs
    def genres
        Song.all.collect{|song|song.genre}
    end
end