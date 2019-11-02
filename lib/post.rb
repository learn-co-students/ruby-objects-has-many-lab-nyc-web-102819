class Post
  attr_reader :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author=(author)
    @author = author
  end

  def author
    @author
  end

  def author_name
    self.author ? (self.author.name) : (nil)
  end

end