class JustTheFacts::CLI

  MENU = [
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
    "Bizarre Deaths",
    "Exit"
]

def call
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".cyan
  puts "~~Welcome to Just the Facts!!~~".blue
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".cyan
  start
end

def start
  puts "What Fact List would you like to see? Enter the corresponding menu number.".blue
  puts "==========================================================================".cyan
  MENU.each.with_index(1) do |fact, number|
  puts "#{number}. #{fact}".cyan
end
  user_input = number_to_index(gets.chomp)
if !user_input.between?(0, MENU.size-1)
  puts "Sorry, that was an invaild entry. Please try again.".red
  start
elsif
  selection(user_input)
  puts "Would you like to see more facts or exit program? Enter M for menu.".red
  input = gets.strip.downcase
  input == "m"
  start
  end
end


def selection(user_input)
  case user_input
  when 0
    facts = JustTheFacts::Scraper.scrape_random
    puts facts
    MENU
  when 1
    facts = JustTheFacts::Scraper.scrape_sports
    puts  facts
    MENU
  when 2
    facts = JustTheFacts::Scraper.scrape_science
    puts facts
    MENU
  when 3
    facts = JustTheFacts::Scraper.scrape_body
    puts facts
    MENU
  when 4
    facts = JustTheFacts::Scraper.scrape_animal
    puts facts
    MENU
  when 5
    facts = JustTheFacts::Scraper.scrape_history
    puts facts
    MENU
  when 6
    facts = JustTheFacts::Scraper.scrape_tech
    puts facts
    MENU
  when 7
    facts = JustTheFacts::Scraper.scrape_english
    puts facts
    MENU
  when 8
    facts = JustTheFacts::Scraper.scrape_food
    puts facts
    MENU
  when 9
    facts = JustTheFacts::Scraper.scrape_us_facts
    puts facts
    MENU
  when 10
    facts = JustTheFacts::Scraper.scrape_bonus
    puts facts
    MENU
  when 11
    facts = JustTheFacts::Scraper.scrape_deaths
    puts facts
    MENU
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