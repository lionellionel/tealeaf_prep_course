groceries = %w{bread eggs cheese}
groceries.each_with_index do |v,i|
  puts "Shopping list item ##{i}: #{v}"
end

