class Book
  attr_accessor :title, :category, :bio, :author

  @@all = []

  def initialize(title: nil, author: nil, category: nil, bio: nil)
    @title = title
    @author = author
    @category = category
    @bio = bio
    @@all << self
  end

  def self.all
    @@all
  end

end

