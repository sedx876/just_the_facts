class JustTheFacts::Scraper

    attr_accessor :url

    @@all = []

    def initialize()
        @url = url
    end

    def self.scrape_random
      html = open("https://www.cs.cmu.edu/~bingbin/")
      doc = Nokogiri::HTML(open("https://www.cs.cmu.edu/~bingbin/"))
      doc.css("body").text.strip
      rows = doc.css("body")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::RandomFacts
      end
    end

    def self.scrape_sports
      html = open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them")
      doc = Nokogiri::HTML(open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"))
      doc.css("#txtd_42304043").text.strip
      rows = doc.css("#txtd_42304043")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::SportsFacts
      end
    end

    def self.scrape_science
      html = open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them")
      doc = Nokogiri::HTML(open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"))
      doc.css("#txtd_42304206").text.strip
      rows = doc.css("#txtd_42304206")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::ScienceFacts
      end
    end

    def self.scrape_body
      html = open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them")
      doc = Nokogiri::HTML(open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"))
      doc.css("#txtd_42304314").text.strip
      rows = doc.css("#txtd_42304314")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::BodyFacts
      end
    end

    def self.scrape_animal
      html = open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them")
      doc = Nokogiri::HTML(open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"))
      doc.css("#txtd_42304354").text.strip
      rows = doc.css("#txtd_42304354")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::AnimalFacts
      end
    end

    def self.scrape_history
      html = open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them")
      doc = Nokogiri::HTML(open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"))
      doc.css("#txtd_42304424").text.strip
      rows = doc.css("#txtd_42304424")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::HistoryFacts
      end
    end

    def self.scrape_tech
      html = open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them")
      doc = Nokogiri::HTML(open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"))
      doc.css("#txtd_42304598").text.strip
      rows = doc.css("#txtd_42304598")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::TechFacts
      end
    end

    def self.scrape_english
      html = open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them")
      doc = Nokogiri::HTML(open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"))
      doc.css("#txtd_42304510").text.strip
      rows = doc.css("#txtd_42304510")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::EnglishFacts
      end
    end

    def self.scrape_food
      html = open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them")
      doc = Nokogiri::HTML(open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"))
      doc.css("#txtd_2562177").text.strip
      rows = doc.css("#txtd_2562177")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::FoodFacts
      end
    end

    def self.scrape_us_facts
      html = open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them")
      doc = Nokogiri::HTML(open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"))
      doc.css("#txtd_2562178").text.strip
      rows = doc.css("#txtd_2562178")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::USFacts
      end
    end

    def self.scrape_bonus
      html = open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them")
      doc = Nokogiri::HTML(open("https://owlcation.com/misc/Over-200-Odd-Facts-Did-You-Know-Them"))
      doc.css("#txtd_2562181").text.strip
      rows = doc.css("#txtd_2562181")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::BonusFacts
      end
    end

    def self.scrape_deaths
      html = open("https://en.wikipedia.org/wiki/List_of_unusual_deaths")
      doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_unusual_deaths"))
      doc.css(".wikitable").text.strip
      rows = doc.css(".wikitable")
      rows.each do |row|
      puts row.text.strip
      JustTheFacts::BizarreDeaths
      end
    end
end