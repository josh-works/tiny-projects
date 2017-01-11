module FakeEnumerable
  def map
    out = []
    each { |e| out << yield(e) }
    out
  end

  def sort_by
  end

  def select
  end

  def map
  end

  def reduce(*args)
  end
end



class SortedList
  include FakeEnumerable

  def initialize
    @data = []
  end

  def <<(new_element)
    @data << new_element
    @data.sort!

  self

  end

  def each
    if block_given?
      @data.each { |e| yield(e) }
    else
      FakeEnumerator.new(self, :each)
    end
  end
end

require "minitest/autorun"

describe "FakeEnumerable" do
  before do
    @list = SortedList.new

    @list << 3 << 13 << 42 << 4 << 7
  end

  it "supports map" do
    @list.map { |x| x + 1}.must_equal([4,5,8,14,43])
  end

  it "supports sort_by" do
    # ASCII sort order
    @list.sort_by { |x| x.to_s }.must_equal([13, 3, 4, 42, 7])
  end

  it "supports select" do
    @list.select { |x| x.even? }.must_equal([4,42])
  end

  it "supports reduce" do
    @list.reduce(:+).must_equal(69)
    @list.reduce { |s,e| s + e }.must_equal(69)
    @list.reduce(-10) { |s,e| s + e }.must_equal(59)
  end







end
