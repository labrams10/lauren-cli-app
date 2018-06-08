require 'nokogiri'
require 'open-uri'
require 'pry'

class Bestsellers::Category
  attr_accessor :name, :titles, :category, :books

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @books = []
  end

  def self.all
    @@all
  end

  def books_by_category
    self.books
  end

  def list_books_by_category
    books_by_category.each.with_index(1) do |book, index|
      puts "#{index}. #{book.title}"
    end
  end

  def self.find_by_index(index)
    @@all[index]
  end

  def add_book(new_book)
    self.books << new_book
  end
end

