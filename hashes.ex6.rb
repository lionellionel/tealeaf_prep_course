words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
                    'flow', 'neon']

anahash = {}

words.each do |w|
  wtmp = w
  #puts wtmp.split(//).sort.to_s
  #puts w
  ( anahash[wtmp.split(//).sort.join] ||= [] ) << w
end

puts anahash

