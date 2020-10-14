# case 1
# assumption: ["1"] ["1"] ["1"]...
# senario: everytime I shift one, I add it back. Infinite loop.
# result : ["1"]

a = [1]
a.each do |e|
  x = a.shift
  a.push(x)
  p a
end

p "------------------------"

#case 2
# assumption: [1,1]
# senario: case 1 didn't work in the way I expected, so Array#each may somehow detect that the array is empty in the middle
# and it will terminate no matter how many time I push items into it.
# result : [1, 1], [1,1,1], [1,1,1,1]...

a = [1]
a.each do |e|
  break if a.length == 10
  x = a.shift
  a.push(x)
  a.push(x)
  p a
end

p "------------------------"
# case 3
# just a while loop to implement the case 1, but this time, it works as expected
# result: [1], [1], [1]...

a = [1]
counter = 0
until a.empty?
  break if counter == 10
  break if a.length == 10
  x = a.shift
  a.push(x)
  p a
  counter += 1
end

