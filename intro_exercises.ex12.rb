contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data.each do |person|
  name = person[0] =~ /joe/ ? "Joe Smith" : "Sally Johnson"
  [:phone,:address,:email].each{|s| contacts[name][s] = person.pop}
end

puts contacts
