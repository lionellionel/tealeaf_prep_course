new_odds=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select do |x|
  x % 2 > 0
end
new_odds << 11
new_odds.unshift(0)
new_odds.pop
new_odds << 3
puts new_odds
#deletes the last 3
puts new_odds.uniq
#deletes the first 3
new_odds.each do |x|
  new_odds.delete_if { |x| new_odds.count(x) > 1 }
end
puts new_odds  

