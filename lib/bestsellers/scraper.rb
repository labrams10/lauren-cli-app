require 'nokogiri'
require 'open-uri'
require 'pry'

module Bestsellers
  class Scraper

    def self.bio
      bio = doc.css("div.book-body p.description")
    end

    def self.author
      #authors = []
      author = doc.css("div.book-body p.author").first.text
    end

    def self.title
      #titles = []
      title = doc.css("div.book-body h3").first.text
    end

    def self.category
      #categories = []
      category = doc.css("a.subcategory-heading-link").each do |element|
        categories << category.strip. # somewhere else
      end
    end

    def self.doc
      Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/"))
    end
  end
end
end
