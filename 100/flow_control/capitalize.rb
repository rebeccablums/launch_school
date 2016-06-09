def capitalize(string)
  if string.length>10
    string.upcase
  else
    string
  end
end

puts capitalize("Hi everyone")
puts capitalize("Hi")
