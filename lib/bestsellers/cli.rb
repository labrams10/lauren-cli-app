class Bestsellers::CLI

  def call
    list_categories
    menu
    goodbye
  end

  def list_categories
    puts "Welcome to the New York Times Bestsellers! Here are 5 categories to choose from:"
    puts <<-DOC.gsub /^\s+/, ""
    1. Combined Print & E-Book Fiction
    2. Hardcover Fiction
    3. Combined Print & E-Book Nonfiction
    4. Hardcover Nonfiction
    5. Paperback Nonfiction
    DOC
  end

  def menu
    input = nil
    while input != "exit"
      puts "Type the number of the category that you would like to see titles from or type list to see the categories again, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
      puts "Combined Print & E-Book Fiction Titles:"
      when "2"
      puts "Hardcover Fiction Titles:"
      when "3"
      puts "Combined Print & E-Book Nonfiction Titles:"
      when "4"
      puts "Hardcover Nonfiction Titles:"
      when "5"
      puts "Paperback Nonfiction Titles:"
      when "list"
        list_categories
      else
        puts "Not sure what you want, type list or exit:"
      end
    end
  end

  def goodbye
    puts "Check back in soon for more bestsellers!"
  end
end
