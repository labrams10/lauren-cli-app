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

  def self.category
    # scrap site
    # iterate thourgh list of categories found and print them
    #should return a bunch of instances of book-style categories
    puts <<-DOC.gsub /^\s+/, ""
    1. Combined Print & E-Book Fiction
    2. Hardcover Fiction
    3. Combined Print & E-Book Nonfiction
    4. Hardcover Nonfiction
    5. Paperback Nonfiction
    DOC

  #   category_1 = self.new
  #   category_1.name = "Combined Print & E-Book Fiction"
  #   category_1.titles =
  #    "1. The Outsider
  #     2. The 17th Suspect
  #     3. The Fallen
  #     4. Beach House Reunion
  #     5. The Cast"

  #   category_2 = self.new
  #   category_2.name = "Hardcover Fiction Titles"
  #   category_2.titles =
  #    "1. The Outsider
  #     2. The Cast
  #     3. The 17th Suspect
  #     4. The Fallen
  #     5. By Invitation Only"

  #   category_3 = self.new
  #   category_3.name = "Combined Print & E-Book Nonfiction Titles"
  #   category_3.titles =
  #    "1. The Restless Wave
  #     2. Facts and Fears
  #     3. The Soul of America
  #     4. How To Change Your Mind
  #     5. Barracoon"

  #   category_4 = self.new
  #   category_4.name = "Hardcover Nonfiction Titles"
  #   category_4.titles =
  #    "1. The Restless Wave
  #     2. The Soul of America
  #     3. Facts and Fears
  #     4. How To Change Your Mind
  #     5. Barracoon"

  #   category_5 = self.new
  #   category_5.name = "Paperback Nonfiction Titles"
  #   category_5.titles =
  #    "1. Sapiens
  #     2. Killers of the Flower Moon
  #     3. Hillbilly Elegy
  #     4. Just Mercy
  #     5. Shoe Dog"
  end
end
