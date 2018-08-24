class Place
  @@places = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all()
    @@places
  end

  def self.clear()
    @@places = []
  end

  def save()
    @@places.push(self)
  end
end
