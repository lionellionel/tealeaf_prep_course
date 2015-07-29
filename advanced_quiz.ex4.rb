def make_uuid
  uuid=String.new
  prng=Random.new
  [8,4,4,4,12].each do |x|
    x.times do
      uuid << prng.rand(16).to_s(16)
    end
    uuid << "-"
  end
  uuid[0,36]
end

puts make_uuid
