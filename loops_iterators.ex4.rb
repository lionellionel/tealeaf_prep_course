def minus_one(x)
  puts x
  minus_one(x-1) if x > 0
end

minus_one(6)

