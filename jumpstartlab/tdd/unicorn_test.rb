gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'unicorn'

class UnicornTest < Minitest::Test
  def test_it_has_a_name_and_color
    unicorn = Unicorn.new("Robert", "White")
    assert_equal "Robert", unicorn.name
    assert_equal "White", unicorn.color
  end


  def test_unicorn_has_sparkly_words
    unicorn = Unicorn.new("josh", "red")
    assert_equal  "**;* phrase **;*", unicorn.speak("phrase")
  end


end
