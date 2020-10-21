# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(array)
  return array if array.length < 2
  finished = false
  i = 1
  while !finished
    finished = true
    (i...array.length).each do |i|
      break if i >= array.length
      if i >= 0 && array[i] < 0 && array[i] == -array[i - 1]
        array.delete_at(i - 1)
        array.delete_at(i - 1)
        finished = false
        i -= 1
      elsif i >= 0 && array[i] < 0 && array[i - 1] > 0
        array[i] + array[i - 1] < 0 ? array.delete_at(i - 1) : array.delete_at(i)
        i = i - 1
        finished = false
        next
      end
    end
  end
  return array
end

p asteroid_collision([5, 10, -5, 199, 198, 12, 4, -1000, 233, 123, 3, 1, -1, -100])
p asteroid_collision([-2, -1, 1, 2])
p asteroid_collision([1, -1, 1, -2])
