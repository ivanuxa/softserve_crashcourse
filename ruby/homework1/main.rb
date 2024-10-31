require_relative "person"
require "date"

ivan = Person.new("Ivashchenko", "Ivan", Date.new(2002, 1, 11))
smith = Person.new("Smith", "John", Date.new(2003, 2, 23))
rock = Person.new("Johnson", "Dwayne", Date.new(1972, 5, 2))
cena = Person.new("Cena", "John", Date.new(1977, 5, 23))
grohl = Person.new("Grohl", "Dave", Date.new(1969, 1, 14))
flint = Person.new("Flint", "Keith", Date.new(1969, 9, 17))

begin
  unknown = Person.new("nil", "nil", Date.new(2025, 1, 1))
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

puts Person.get_students_by_age(55)

puts Person.get_students_by_name("John")

flint.remove_student

puts Person.get_students