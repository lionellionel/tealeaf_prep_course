def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "XX a_outer is 42 with an id of: a1 before the block. PREDICTED"
  puts "XX a1 = #{a_outer_id}"
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "XX b_outer is fourty two with an id of: b1 before the block."
  puts "XX b1 = #{b_outer_id}"
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "XX c_outer is [42] with an id of: c1 before the block."
  puts "XX c1 = #{c_outer_id}"
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
  puts "XX d_outer is #{d_outer} with an id of: d1 before the block."
  puts "XX d1 = #{d_outer_id} \n\n"

  ### Why does d_outer_id == a_outer_id? books says "notice this" but doesn't explain

  1.times do
    a_outer_inner_id = a_outer.object_id
    b_outer_inner_id = b_outer.object_id
    c_outer_inner_id = c_outer.object_id
    d_outer_inner_id = d_outer.object_id

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer.object_id} inside the block."
    puts "XX a_outer id was a1 before the block and is: a1 inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer.object_id} inside the block."
    puts "XX b_outer id was b1 before the block and is: b1 inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer.object_id} inside the block."
    puts "XX c_outer id was c1 the block and is: c1 inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer.object_id} inside the block."
    puts "XX d_outer id was d1 the block and is: d1 inside the block.\n"
    puts "NOTE: Ruby did NOT change the id for any of the objects between outside and inside the block\n\n"

    a_outer = 22
    b_outer = "thirty three"
    c_outer = [44]
    d_outer = c_outer[0]

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "XX a_outer inside after reassignment is 22 with an id of: a1 before and: a1' object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "XX b_outer inside after reassignment is thiry three with an id of: b1 before and: b1' after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "XX c_outer inside after reassignment is [44] with an id of: c1 before and: c1' after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.\n\n"
    puts "XX d_outer inside after reassignment is 44 with an id of: d1 before and: d1' after.\n\n"


    a_inner = a_outer
    b_inner = b_outer
    c_inner = c_outer
    d_inner = c_inner[0]

    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "XX a_inner is 22 with an id of: a1' inside the block (compared to a1' for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "XX b_inner is thirty three with an id of: b1' inside the block (compared to b1' for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "XX c_inner is [44] with an id of: c1' inside the block (compared to c1' for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
    puts "XX d_inner is #{d_inner} with an id of: d1' inside the block (compared to d1' for outer).\n\n"
  end
#
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "XX a_outer is 22 with an id of: a1 BEFORE and: #{a_outer.object_id} AFTER the block."
#  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
#  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
#  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block.\n\n"
#
#  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue "ugh ohhhhh"
#  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue "ugh ohhhhh"
#  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue "ugh ohhhhh"
#  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block.\n\n" rescue "ugh ohhhhh"
end

fun_with_ids
