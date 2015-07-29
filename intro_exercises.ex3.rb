new_odds=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select do |x|
  x % 2 > 0
end
puts new_odds

