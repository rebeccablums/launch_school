
p "h1:", h1 = {cat: 'Fred', dog: 'Al'}
p "h2:", h2 = {pig: 'Wilbur', cow: 'Mary'}
puts "This shows 'merge':"
p h1.merge(h2)
p "h1:", h1
p "h2:", h2
puts "This shows 'merge!:'"
p h1.merge!(h2)
p "h1:", h1
p "h2:", h2
