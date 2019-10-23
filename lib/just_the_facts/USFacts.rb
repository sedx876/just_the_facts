class USFacts
    @@all = []

    def initialize(description)
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def self.reset_all
        @@all.clear
      end

end