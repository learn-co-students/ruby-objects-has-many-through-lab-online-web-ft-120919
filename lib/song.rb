class Song
    attr_accessor :name, :artist, :genre # belongs to a genre  # belongs to a artist

    @@all = []
     ##new-- initializes with a name, an artist, and a genre
    def initialize(name, artist, genre) 
        @name = name
        @artist = artist
        @genre = genre
       @@all << self
    end
    #knows about all song instances
    def self.all 
        @@all
    end
end