fruits = { banana: 'yellow', tomato: 'red'}
veggies = { bean: 'green', tomato: 'green'}
puts "our food hashes"
puts "fruits #{fruits}"
puts "veggies #{veggies}"

puts "non destructive merge"
puts "fruits.merge(veggies) #{fruits.merge(veggies)}"
puts "fruits #{fruits}"
puts "veggies #{veggies}"

puts "destructive merge"
puts "fruits.merge(veggies) #{fruits.merge!(veggies)}"
puts "fruits #{fruits}"
puts "veggies #{veggies}"
