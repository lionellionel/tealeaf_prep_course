nums = [5,6,7,8]
report = {}

nums.each do |x|
  i = x
  report[x] = []
  while i > 0
    report[x] << i if x % i == 0
    i -= 1
  end
end

puts report


