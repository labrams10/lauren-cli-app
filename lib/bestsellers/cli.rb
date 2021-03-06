module Bestsellers
  class CLI

    def call
      clear_terminal
      Bestsellers::Scraper.get_categories_with_books
      list_categories
      category_menu
      goodbye
    end

    def list_categories
      puts "Welcome to the New York Times Bestsellers! Here are #{Bestsellers::Category.all.count} categories to choose from:"

      Bestsellers::Category.all.each.with_index(1) do |category, index|
        puts "#{index}. #{category.name}"
      end
    end

    def category_menu
      input = nil
      while input != "exit"
        puts "Type the number of the category that you would like to see titles from, or type exit:"
        input = gets.strip.downcase
        case input
        when "1"
          page_break
          Bestsellers::Category.find_by_index(0).list_books_by_category
          book_menu(0)
        when "2"
          page_break
          Bestsellers::Category.find_by_index(1).list_books_by_category
          book_menu(1)
        when "3"
          page_break
          Bestsellers::Category.find_by_index(2).list_books_by_category
          book_menu(2)
        when "4"
          page_break
          Bestsellers::Category.find_by_index(3).list_books_by_category
          book_menu(3)
        when "5"
          page_break
          Bestsellers::Category.find_by_index(4).list_books_by_category
          book_menu(4)
        when "exit"
          puts goodbye
        else
          puts "Not sure what you want, please try again"
        end
      end
    end

    def book_menu(category_index)
      input = nil
        puts "To get more info on a book above, select its associated number:"
        input = gets.strip.downcase
        case input
        when "1"
          Bestsellers::Category.find_by_index(category_index).find_book_by_category_and_index(0).book_info
        when "2"
          Bestsellers::Category.find_by_index(category_index).find_book_by_category_and_index(1).book_info
        when "3"
          Bestsellers::Category.find_by_index(category_index).find_book_by_category_and_index(2).book_info
        when "4"
          Bestsellers::Category.find_by_index(category_index).find_book_by_category_and_index(3).book_info
        when "5"
          Bestsellers::Category.find_by_index(category_index).find_book_by_category_and_index(4).book_info
        when "exit"
          puts goodbye
        else
          puts "Not sure what you want, try again"
          page_break
        end
        page_break
    end

    def goodbye
      "Check back in soon for more bestsellers!"
    end

    def clear_terminal
      system "clear"
    end

    def page_break
      puts "-----------------------------------"
    end
  end
end
