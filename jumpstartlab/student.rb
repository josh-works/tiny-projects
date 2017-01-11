# student.rb

class Student
  # attr_accessor :name, :grade

  def initialize(n, g)
    @name = n
    @grade = g
  end

  def compare(student1)
    puts student1
  end

  def better_grade_than?(student)
    puts "well done. #{@name} () outscored #{student}" if self.grade_getter < student.grade_getter
  end

  def grade_getter
    grade
  end

private

  def grade
    @grade
  end


end
