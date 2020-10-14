# @param {Integer[][]} points
# @return {Integer}
def find_min_arrow_shots(points)
  points.sort!
  counter = 0
  until points.empty?
    find_index(points)
    counter += 1
  end
  counter
end

def find_index(points)
  i = 0
  first = points.shift
  while !points.empty?
    if first.last >= points[0].first
      first[0] = points[0].first
      if first.last >= points[0].last
        first[1] = points[0][1]
      end
      points.shift
    else
      return
    end
  end
end

p find_min_arrow_shots([[9, 12], [1, 10], [4, 11], [8, 12], [3, 9], [6, 9], [6, 7]])
