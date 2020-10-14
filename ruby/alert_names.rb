def alert_names(key_name, key_time)
  hash = Hash.new { |h, k| h[k] = [] }
  key_name.each_with_index do |name, i|
    hash[name] << key_time[i]
  end
  hash.select { |k, v| p v.sort; check_frequent_user(v.sort) }.keys.sort
end

def check_frequent_user(array)
  return false if array.length < 3
  (0...array.length - 2).any? do |i|
    check_three_times(array[i], array[i + 1], array[i + 2])
  end
end

def check_three_times(time1, time2, time3)
  time1 = time1.split(":").map(&:to_i)
  time2 = time2.split(":").map(&:to_i)
  time3 = time3.split(":").map(&:to_i)
  if time3[0] > time1[0] + 1 || time3[0] == time1[0] + 1 && time3[1] > time1[1]
    return false
  end
  return true
end

# ["alice", "alice", "alice", "bob", "bob", "bob", "bob"]
# ["12:01", "12:00", "18:00", "21:00", "21:20", "21:30", "23:00"]
key_name = ["a", "a", "a", "a", "a", "a", "b", "b", "b", "b", "b"]
key_time = ["23:27", "03:14", "12:57", "13:35", "13:18", "21:58", "22:39", "10:49", "19:37", "14:14", "10:41"]
p alert_names(key_name, key_time)
