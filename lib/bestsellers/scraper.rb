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
      category.each do |book| #scrape each book within the loop of the instance of catagory created above ^^
        category_name.add_book(Book.new(
          title: category.css("div.book-body h3").text,
          author: category.css("div.book-body p.author").text,
          bio: category.css("div.book-body p.description").text,
          category: category_name
          ))
      end
    end
  end
end


#Why does each category only have one instance of book? Each one should have 5? is it an issue with my reader or the riter within the method above?
