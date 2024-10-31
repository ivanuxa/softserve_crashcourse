require_relative "student"
require "date"

ivan = Student.new("Ivashchenko", "Ivan", Date.new(2002, 1, 11))
smith = Student.new("Smith", "John", Date.new(2003, 2, 23))
rock = Student.new("Johnson", "Dwayne", Date.new(1972, 5, 2))
cena = Student.new("Cena", "John", Date.new(1977, 5, 23))
grohl = Student.new("Grohl", "Dave", Date.new(1969, 1, 14))
flint = Student.new("Flint", "Keith", Date.new(1969, 9, 17))

begin
  _unknown = Student.new("nil", "nil", Date.new(2025, 1, 1))
rescue ArgumentError => err
  puts err.message
end

ivan.add_student
ivan.add_student

cena.remove_student

smith.add_student
rock.add_student
cena.add_student
grohl.add_student
flint.add_student

puts Student.get_students_by_age(55)

puts Student.get_students_by_name("John")

flint.remove_student

puts Student.get_students