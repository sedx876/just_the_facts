class JustTheFacts::Scraper

  attr_accessor :url

  @@all = []

  def initialize()
  @url = url
  end

  def self.scrape_random
    url = ["https://www.cs.cmu.edu/~bingbin/"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("body").text
    end
    facts
  end

  def self.scrape_sports
    url = ["https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("#txtd_42304043").text
    end
    facts
  end

  def self.scrape_science
    url = ["https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("#txtd_42304206").text
    end
    facts
  end

  def self.scrape_body
    url = ["https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("#txtd_42304314").text
    end
    facts
  end

  def self.scrape_animal
    url = ["https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("#txtd_42304354").text
    end
    facts
  end

  def self.scrape_history
    url = ["https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("#txtd_42304424").text
    end
    facts
  end

  def self.scrape_tech
    url = ["https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("#txtd_42304598").text
    end
    facts
  end

  def self.scrape_english
    url = ["https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("#txtd_42304510").text
    end
    facts
  end

  def self.scrape_food
    url = ["https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("#txtd_2562177").text
    end
    facts
  end

  def self.scrape_us_facts
    url = ["https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("#txtd_2562178").text
    end
    facts
  end

  def self.scrape_bonus
    url = ["https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css("#txtd_2562181").text
    end
    facts
  end

  def self.scrape_deaths
    url = ["https://en.wikipedia.org/wiki/List_of_unusual_deaths"]
    facts = []
    url.each do |url|
    facts << Nokogiri::HTML(open(url)).css(".wikitable").text
    end
    facts
  end
end

