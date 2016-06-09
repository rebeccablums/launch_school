animals = ['sheep', 'chicken', 'cow', 'pig', 'horse']

animals.each_with_index do |animal, index|
  puts "#{index + 1}. #{animal}"
end