class Author
    attr_accessor :name, :title

    def initialize(name)
        @name = name
    end

    def posts
        Post.all
    end

    def add_post(post)
        Post.all << post
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def self.post_count
        Post.all.uniq.count
    end
end