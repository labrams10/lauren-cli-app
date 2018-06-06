class Book
  attr_accessor :title, :category, :bio, :author

  def initialize(title, author, category, bio)
    @title = title
    @author = author
    @category = category
    @bio = bio
  end
end
