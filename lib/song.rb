class Song
    attr_accessor :name, :artist
    @@all = []    #all songs
   
    def initialize(name)
      @name = name
      save
    end
   
    def save
      @@all << self
    end
   
    def self.all
      @@all
    end

    # def name
    # end

    # def artist
    # end

    def artist_name
      if self.artist
        self.artist.name
      end
    end
  end