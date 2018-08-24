class Place
  @@places = []

  def initialize()

  end

  def self.all()
    @@places
  end

  def save()
    @@places.push(self)
  end
end
