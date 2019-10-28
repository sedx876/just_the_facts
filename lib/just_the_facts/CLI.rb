class JustTheFacts::CLI #< JustTheFacts::Scraper
  attr_accessor :fact
  FACTS = [
      "Random Facts",
      "Sports Facts",
      "Science Facts",
      "Body Facts",
      "Animal Facts",
      "History Facts",
      "Tech Facts",
      "English Facts",
      "Food Facts",
      "US Facts",
      "Bonus Facts",
      "Bizarre Facts",
      "Exit"
  ]

  def call
    puts "~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~".magenta
    puts   " *~>*<~Welcome to Just the Facts!!~>*<~*".magenta
    puts "~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~ ~>*<~".magenta
    start
  end

  def start
    puts "What Fact List would you like to see?".blue
    FACTS.each.with_index(1) do |fact, number|
    puts "#{number}. #{fact}".cyan
  end
    user_input = number_to_index(gets.chomp)
  if !user_input.between?(0, FACTS.size-1)
    puts "Sorry, that was an invaild entry. Please try again.".red
    start
  elsif
    selection(user_input)
    puts "Would you like to see more facts or exit program? Enter M for menu.".cyan
    input = gets.strip.downcase
    input == "m"
    start
    end
  end


  def selection(user_input)
    case user_input
    when 0
      JustTheFacts::Scraper.scrape_random
    when 1
      JustTheFacts::Scraper.scrape_sports
    when 2
      JustTheFacts::Scraper.scrape_science
    when 3
      JustTheFacts::Scraper.scrape_body
    when 4
      JustTheFacts::Scraper.scrape_animal
    when 5
      JustTheFacts::Scraper.scrape_history
    when 6
      JustTheFacts::Scraper.scrape_tech
    when 7
      JustTheFacts::Scraper.scrape_english
    when 8
      JustTheFacts::Scraper.scrape_food
    when 9
      JustTheFacts::Scraper.scrape_us_facts
    when 10
      JustTheFacts::Scraper.scrape_bonus
    when 11
      JustTheFacts::Scraper.scrape_deaths
    when 12
      puts "GoodBye".red
    else
      start
end
end

  def number_to_index(user_input)
    user_input.to_i - 1
  end

end