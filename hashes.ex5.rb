beer = {
  lionel: 'ale',
  gina: 'none',
  katrina: 'none',
  george: 'stout',
  zeus: 'lager' }

puts "Does somebody not drink beer?"

puts beer.has_value?("none") ? "Yes" : "No"


