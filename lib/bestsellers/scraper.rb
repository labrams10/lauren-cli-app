require 'nokogiri'
require 'open-uri'
require 'pry'

module Bestsellers
  class Scraper

    # def self.bio
    #   bio = doc.css("div.book-body p.description")
    # end

    def get_page
      doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/"))
    end

    # def self.author
    #   #authors = []
    #   author = doc.css("div.book-body p.author").first.text
    # end

    # def self.title
    #   #titles = []
    #   title = doc.css("div.book-body h3").first.text
    # end

    def get_categories_with_books
      category = get_page.css("section.subcategory").first
      new_category = category.css("a.subcategory-heading-link").text.strip
      binding.pry
    end


    #   #categories = []
    #   category = category.css("a.subcategory-heading-link").text
    #.each do |element|
    #     categories << category.strip. # somewhere else
    #   end
    # end

# get each category

end
end
