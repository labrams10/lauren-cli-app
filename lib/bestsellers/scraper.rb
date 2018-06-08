require 'nokogiri'
require 'open-uri'
require 'pry'

  class Bestsellers::Scraper


  def self.get_page
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/"))
  end

  def self.get_categories_with_books
    get_page.css("section.subcategory").each do |category| #scrape each category with the books inside, and create the instance of category
      category_name = Bestsellers::Category.new(category.css("a.subcategory-heading-link").text.strip)
      category.css("article.book").each do |book|
        new_book = Book.new(
          title: book.css("div.book-body h3").text,
          author: book.css("div.book-body p.author").text,
          bio: book.css("div.book-body p.description").text,
          category: category_name
          )
        category_name.add_book(new_book)
      end
    end
  end
end
#main > div.view.landing-view > section:nth-child(1) > ol > li:nth-child(1) > article

#Why does each category only have one instance of book? Each one should have 5? is it an issue with my reader or the writer within the method above?
