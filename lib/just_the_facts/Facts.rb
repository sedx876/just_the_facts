class JustTheFacts::Facts

  @@all = []

  attr_accessor :animal, :bizarre, :body, :bonus, :english,
  :food, :history, :random, :science, :sports, :tech, :us, :text

  def initialize(text)
    @text = text
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
end