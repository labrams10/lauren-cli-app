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
          Bestsellers::Category.find_by_index(1).list_books_by_category
        when "2"
        puts "Hardcover Fiction Titles:
        1. The Outsider
        2. The Cast
        3. The 17th Suspect
        4. The Fallen
        5. By Invitation Only"
        when "3"
        puts "Combined Print & E-Book Nonfiction Titles:
        1. The Restless Wave
        2. Facts and Fears
        3. The Soul of America
        4. How To Change Your Mind
        5. Barracoon"
        when "4"
        puts "Hardcover Nonfiction Titles:
        1. The Restless Wave
        2. The Soul of America
        3. Facts and Fears
        4. How To Change Your Mind
        5. Barracoon"
        when "5"
        puts "Paperback Nonfiction Titles:
        1. Sapiens
        2. Killers of the Flower Moon
        3. Hillbilly Elegy
        4. Just Mercy
        5. Shoe Dog"
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
