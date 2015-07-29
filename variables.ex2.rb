puts "yo age dawg"
age = gets.chomp.to_i
#[10,20,30,40].each do |i| 
#  puts "In #{i} years you'll be #{i+age} years old\n" 
#end
[10,20,30,40].each { |i| puts "In #{i} years you'll be #{i+age} years old\n"  }
