require 'pry'
class Author
  attr_accessor :name

def initialize(name)
  @name = name
end



  def posts
    binding.pry
    Post.all.select do | post |
      post.author == self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    newpost = Post.new(title)
    add_post(newpost)
  end

  def self.post_count
    Post.all.length
  end



end
