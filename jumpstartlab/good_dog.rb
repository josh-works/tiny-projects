# good_dog.rb

class GoodDog
  attr_accessor :name, :height, :weight
  puts self

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall"
  end

  def what_is_self
    self
  end

end
