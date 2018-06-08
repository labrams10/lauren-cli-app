module Bestsellers
  class CLI

    def call
      clear_terminal
      Bestsellers::Scraper.get_categories_with_books
      list_categories
      menu
      goodbye
    end

    def list_categories
      puts "Welcome to the New York Times Bestsellers! Here are #{Bestsellers::Category.all.count} categories to choose from:"

      Bestsellers::Category.all.each.with_index(1) do |category, index|
        puts "#{index}. #{category.name}"
      end
    end

    def menu
      input = nil
      while input != "exit"
        puts "Type the number of the category that you would like to see titles from, type list to see cateories again, or type exit:"
        input = gets.strip.downcase
        case input
        when "1"
          Bestsellers::Category.find_by_index(0).list_books_by_category
        when "2"
          Bestsellers::Category.find_by_index(1).list_books_by_category
        when "3"
          Bestsellers::Category.find_by_index(2).list_books_by_category
        when "4"
         Bestsellers::Category.find_by_index(3).list_books_by_category
        when "5"
         Bestsellers::Category.find_by_index(4).list_books_by_category
        when "list"
          list_categories
        when "exit"
        puts goodbye
        else
          puts "Not sure what you want, type list or exit"
        end
      end
    end


    def goodbye
      "Check back in soon for more bestsellers!"
    end

    def clear_terminal
      system "clear"
    end
  end
end
