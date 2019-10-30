require 'pry'

class Post

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end  
    
    def title
        @title
    end

    def author=(author)
        @author = author
    end

    def author
        @author
    end

    def author_name
        # self.author.name
        binding.pry
        if self.author
            self.author.name
        end
    end

end
