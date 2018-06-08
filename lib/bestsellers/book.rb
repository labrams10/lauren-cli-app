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

  def book_info
    puts "Title: #{self.title}"
    puts "#{self.author}"
    puts "Description: #{self.bio}"
  end
end
