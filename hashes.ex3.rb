family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

family.keys.each do |k|
  puts "a family key: #{k}"
end

family.values.each do |v|
  puts "family values: #{v}"
end

family.each do |k,v|
  puts "the #{k} are #{v}"
end

