def check_sequence(string)
  if string =~ /lab/
    puts string
  else
    puts "No match"
  end
end

check_sequence("laboratory")
check_sequence("experiment")
check_sequence("Pans-Labyrinth")
check_sequence("elaborate")
check_sequence("polar bear")