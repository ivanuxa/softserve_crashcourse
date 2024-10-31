require "date"

class Person
  @@students = []

  attr_reader :surname
  attr_reader :name
  attr_reader :date_of_birth

  def initialize(surname, name, date_of_birth)
    unless date_of_birth < Date.today
      raise ArgumentError.new("Date of birth should be in the past. date_of_birth: #{date_of_birth}")
    end
    @surname = surname
    @name = name
    @date_of_birth = date_of_birth
  end

  def calculate_age
    age = Date.today.year - date_of_birth.year
    age -= 1 if Date.today < date_of_birth + age
    age
  end

  def add_student
    if @@students.include?(self)
      puts "Student is already in the class list. Student: #{self.to_s}"
    else
      @@students << self
      puts "Student (#{self}) has been added to the class list"
    end
  end

  def remove_student
    if @@students.include?(self)
      @@students.delete(self)
      puts "Student (#{self}) has been deleted from the class list"
    else
      puts "There is no student #{self.to_s}"
    end
  end

  def self.get_students
    @@students
  end

  def self.get_students_by_age(age)
    @@students.select { |student| student.calculate_age == age }
  end

  def self.get_students_by_name(name)
    @@students.select { |student| student.name == name }
  end

  def to_s
    "#{name} #{surname}, #{calculate_age}"
  end
end
