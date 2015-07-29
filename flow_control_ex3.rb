puts "gimme number"
n = gets.chomp.to_i

puts case
when n < 50
  "less than fifty"
when 50 < n && n < 100
  "somewhere between 50 and 100"
else
  "you've reached the outer limits"
end


