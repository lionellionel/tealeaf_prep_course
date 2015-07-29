munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

age_groups = { kid: (0..17), adult: (18..64), senior: (65..150) }

cheese = munsters.each_pair do |k,v|
  case v["age"]
    when age_groups[:kid]
      munsters[k][:age_group] = "kid"
    when age_groups[:adult]
      munsters[k][:age_group] = "adult"
    when age_groups[:senior]
      munsters[k][:age_group] = "senior"
    else
      munsters[k][:age_group] = "dead"
  end
end

puts munsters

puts cheese

