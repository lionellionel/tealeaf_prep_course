new_odds=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select do |x|
  x % 2 > 0
end
new_odds << 11
new_odds.unshift(0)
new_odds.pop
new_odds << 3
puts new_odds

