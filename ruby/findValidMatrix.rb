require "byebug"
possible_array = [
  [4, 4, 4],
  [7, 5, 8],
  [7, 5, 7],
]
row_sum = [4, 9, 7]
col_sum = [7, 5, 8]

# res = [
#   [0, 0, 0],
#   [0, 0, 0],
#   [0, 0, 0],
# ]
row_sum = [4, 12, 10, 1, 0]
col_sum = [1, 0, 3, 16, 7]

def create_index_hash(row_sum, col_sum)
  hash = Hash.new { |h, k| h[k] = [] }
  row_min_index = row_sum.index(row_sum.min)
  col_min_index = col_sum.index(col_sum.min)
  row_sum.each_with_index do |r, i|
    col_sum.each_with_index do |c, j|
      res << (r < c ? [r, i, j] : [c, i, j])
    end
  end
  res.sort_by { |e| e[0] }
end

def restore_matrix(row_sum, col_sum)
  index_array = create_index_array(row_sum, col_sum)
  res = Array.new(row_sum.length) { Array.new(col_sum.length) }
  debugger
  while !(index_array.empty?)
    val, row_index, col_index = index_array.shift
    p "dealing with #{row_index}, #{col_index}"
    num = check_row_col_to_decide_val(row_sum, col_sum, row_index, col_index, res)
    num.times { index_array.shift }
  end
  p res
  return res
end

def check_row_col_to_decide_val(row_sum, col_sum, row_index, col_index, res)
  current_row_sum = res[row_index].reject(&:nil?).sum
  current_col_sum = res.transpose[col_index].reject(&:nil?).sum
  row_possible_val = row_sum[row_index] - current_row_sum
  col_possible_val = col_sum[col_index] - current_col_sum
  realmin = [row_possible_val, col_possible_val].min
  select_row_or_col = realmin == row_possible_val ? 0 : 1
  select_row_or_col = 2 if row_possible_val == col_possible_val
  res[row_index][col_index] = realmin
  if select_row_or_col == 2
    times_to_pop = (fill_row_zeros(row_index, res) + fill_col_zeros(col_index, res))
  elsif select_row_or_col == 1
    times_to_pop = fill_col_zeros(col_index, res)
  else
    times_to_pop = fill_row_zeros(row_index, res)
  end
  return times_to_pop
end

def fill_row_zeros(row_index, res)
  counter = 0
  res[row_index].each_with_index do |ele, idx|
    if ele.nil?
      counter += 1
      res[row_index][idx] = 0
    end
  end
  return counter
end

def fill_col_zeros(col_index, res)
  counter = 0
  (0...res.length).each do |i|
    if !res[i][col_index]
      res[i][col_index] = 0
      counter += 1
    end
  end
  return counter
end

p restore_matrix(row_sum, col_sum)
