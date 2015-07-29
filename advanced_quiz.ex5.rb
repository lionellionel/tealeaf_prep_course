def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if !is_a_number?(word) || word.to_i > 256
  end
  true
end

def is_a_number?(word)
  word =~ /^\d+$/ ? true : false
end

puts dot_separated_ip_address?("10.5.3.686")
