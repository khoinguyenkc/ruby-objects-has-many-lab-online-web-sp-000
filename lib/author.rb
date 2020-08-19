class Author
  attr_accessor :name
def initialize(name)
  @name = name
end



  def posts
    Post.all.select do | song |
      post.author == self
    end
  end




end
