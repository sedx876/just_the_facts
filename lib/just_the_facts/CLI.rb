class CLI

    def call
      puts "~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~"
      puts       "Welcome to Just the Facts!!"
      puts "~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~"
      start
    end

    def start
      puts "What Fact List would you like to see?"
      puts "Choose 1 for Random Facts"
      puts "Choose 2 for 12 Weird Sports Facts"
      puts "Choose 3 for 31 Weird Science Facts"
      puts "Choose 4 for 21 Odd Body Facts"
      puts "Choose 5 for 36 Cool Animal Facts"
      puts "Choose 6 for 30 Odd Historical Facts"
      puts "Choose 7 for 11 Fun Tech Facts"
      puts "Choose 8 for 11 Cool English Language Facts"
      puts "Choose 9 for 14 Odd Food Facts"
      puts "Choose 10 for 16 Strange US Facts"
      puts "Choose 11 for 13 Bonus Facts"
      puts "Choose 12 for A List of Bizarre Deaths"
      input = gets.chomp
      choice_valid?
    end

    def choice_valid?
        if input = gets.chomp > 0 && input = gets.chomp < 13
            selection
        else
            puts "That is not a valid entry. Please try again"
            menu
        end
    end

    def selection
        if input == 1
            scrape_random
        elsif input == 2
            scrape_sports
        elsif input == 3
            scrape_science
        elsif input == 4
            scrape_body
        elsif input == 5
            scrape_animal
        elsif input == 6
            scrape_history
        elsif input == 7
            scrape_tech
        elsif input == 8
            scrape_english
        elsif input == 9
            scrape_food
        elsif  input == 10
            scrape_us_facts
        elsif input == 11
            scrape_bonus
        elsif input == 12
            scrape_deaths
        end
    end
end