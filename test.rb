require_relative 'person'

person = Person.new('sumar', 22, 'male', '6.1', 86)
alex = Person.new('alex', 22, 'male', '6.1', 86)
hamza = Person.new('hamza', 22, 'male', '6.1', 86)

# creating methods manually
# Person.create_method(person.name)
# Person.create_method(alex.name)
# Person.create_method(hamza.name)

# calling those methods
puts person.sumars_bio('love')
puts alex.alexs_bio('test')
puts alex.alexs_summary

puts hamza.hamzas_bio('hate')
puts hamza.hamzas_summary
