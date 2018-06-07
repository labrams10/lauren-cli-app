require 'nokogiri'
require 'open-uri'
require 'pry'

module Bestsellers
  class Scraper


    def get_page
      doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/"))
    end

    def get_categories_with_books
      get_page.css("section.subcategory").each do |category|
        category_name = Bestsellers::Category.new(category.css("a.subcategory-heading-link").text.strip)
        category.each do |book|
          category_name.books << Book.new(
            title: category.css("div.book-body h3").text,
            author: category.css("div.book-body p.author").text,
            bio: category.css("div.book-body p.description").text,
            category: category_name
            )
        end
      end
      binding.pry
    end
  end
end
