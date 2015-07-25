digits = (1..10_000)
#digits = [11]
digits.each do |digit|
  fives =(digit / 3).truncate
  spaces = digit % 3
  threes = 0
  #puts "spaces #{spaces}"
  #puts "threes #{threes}"
  #puts "fives #{fives}"

  until (spaces % 5) == 0 do
    spaces = 3 + spaces
    threes = (spaces / 5).truncate
    fives = fives -1
    #puts "=== iteration =="
    #puts "spaces #{spaces}"
    #puts "threes #{threes}"
    #puts "fives #{fives}"
    #puts
 end
  #puts " ---- answer --- "
  if (fives < 0) || (threes < 0)
    puts
    puts "-1"
  else
    #puts "digit: #{digit}"
    #puts "3's: #{threes % 5}"
    #puts "5's: #{fives}"
    puts "#{'555' * fives}#{'33333' * threes}"
  end
end
