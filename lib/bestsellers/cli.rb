module Bestsellers
  class CLI

    def call
      list_categories
      menu
      goodbye
    end

    def list_categories
      puts "Welcome to the New York Times Bestsellers! Here are 5 categories to choose from:"
      #Bestsellers::Category.category

      Bestsellers::Scraper.new.get_categories_with_books
    end

    def menu
      input = nil
      while input != "exit"
        puts "Type the number of the category that you would like to see titles from or type list to see the categories again, or type exit:"
        input = gets.strip.downcase
        case input
        when "1"
        puts "Combined Print & E-Book Fiction Titles:
        1. The Outsider
        2. The 17th Suspect
        3. The Fallen
        4. Beach House Reunion
        5. The Cast"
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
        else
          puts "Not sure what you want, type list or exit:"
        end
      end
    end

    # def title_menu
    #   input = nil
    #   while input != "exit"
    #     input = gets.strip.downcase
    #     case input
    #     when "1"
    #     puts <<-DOC.gsub /^\s+/, ""
    #     1. The Outsider
    #     2. The 17th Suspect
    #     3. The Fallen
    #     4. Beach House Reunion
    #     5. The Cast
    #     DOC
    #     end
    #   end
    # end

    def goodbye
      puts "Check back in soon for more bestsellers!"
    end
  end
end
