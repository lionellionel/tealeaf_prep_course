def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param << "rutabega"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "Using method tricky_method"
puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

def add_rutabega(thing)
  case thing
    when String
      return thing + " rutabega"
    when Array
      return thing + ["rutabega"]
  end
end

string2 = "pumpkins"
array2 = ["pumpkins"]

puts "Using method add_rutabega"
puts "My string looks like #{add_rutabega(string2)}"
puts "My array looks like #{add_rutabega(array2)}"
