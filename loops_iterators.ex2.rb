loop do
  puts 'whadya want?'
  g = gets.chomp
  break if g == 'STOP'
end

g = ''
until g == 'STOP' 
  puts 'what u want?'
  g = gets.chomp
end

