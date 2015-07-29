def titleize!(title)
  eggs = title.split(/\s+/).map{|x| x.capitalize}.join(" ")
  title[0,title.length] = eggs
end

title = "now is The time for great men."

titleize!(title)
puts title
