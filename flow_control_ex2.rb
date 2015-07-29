puts "gimme a string I might capitalize"
s = gets.chomp
if s.length > 10
  puts s.upcase
else
  puts "at #{s.length}, it's < 10 long, I ain't doin it"
end

