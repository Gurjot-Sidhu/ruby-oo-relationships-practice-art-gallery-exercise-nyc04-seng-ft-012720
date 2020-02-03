class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings 
    Painting.all.select do |paintings|
      paintings.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_expierience
    total = 0
    Artist.all.each do |artists|
      total += artists.years_experience
    end
    total
  end

  def self.most_prolific
    Artist.all.min_by do |artists|
        artists.years_experience / artists.paintings.length
      end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
