class Unicorn

attr_accessor :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

  def speak(text)
    return "**;* " + text + " **;*"
  end

end
