# f = File.open("maze1.txt")
# arr = f.readlines
# arr = arr[1..-2].map { |e| e[1..-3] }
# p arr
# f.close
# hash = {}
# s = []
# e = []
# arr.each_with_index do |str, i|
#   str.each_char.with_index do |c, j|
#     if c == "S"
#       s = [i, j]
#     elsif arr[i][j] == "E"
#       e = [i, j]
#     end
#   end
# end
# r_diff = e.first - s.first
# c_diff = e.last - s.last

# p r_diff, c_diff
# #r_diff < 0 move up
# #r_diff > 0 move down
# #c_diff < 0 move left
# #c_diff > 0 move right

# # r_diff < 0 && c_diff < 0 r.abs > c.abs => up left right down
# # r_diff < 0 && c_diff < 0 r.abc < c.abs => left up down right
# # compare abs first, decide up-down or left-right first
# # compare sign then, decide up down or down up ; left-rigth or right-left

# def is_prime?(n)
#   (2...n).none { |num| n % num == 0 }
# end

# hash = {}

# is_prime_lambda = lambda { |n| (2...n).none? { |num| n % num == 0 } }
# divided_by_five = lambda { |n| n / 5 }

# interesting_lambde = lambda { |a, b, c| return a & b & c }

# def try_something_new(n, lambda)
#   p lambda.call(n) == 1
# end

# try_something_new(5, is_prime_lambda)
# try_something_new(5, divided_by_five)

# def try_something_interesting(n, lambda)
#   lambda.call(n - 1, n, n + 1)
# end

# p try_something_interesting(10, interesting_lambde)

# p ["a".."z"].each { |e| e }.each { |e| p e }
# p (0..5).each { |i| i }
# p e
