werds = %w{
  laboratory
  experiment
  Pans\ Labyrinth
  elaborate
  polar\ bear
}

werds.each do |w|
  puts w if w[/lab/i]
end
