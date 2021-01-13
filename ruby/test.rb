def ladder_length(b, e, list)
  hist = [b]
  visited = [[b, 1]]
  while !visited.empty?
    curr = visited.shift
    p curr
    p curr[1]
    p hist
    new_candidates = list.select { |w| one_diff(curr[0], w) } - hist
    hist.concat(new_candidates)
    visited.concat(new_candidates.map { |w| [w, curr[1] + 1] })
    return curr[1] if hist.include?(e)
  end
end

def one_diff(w1, w2)
  counter = 0
  w1.each_char.with_index do |c, i|
    if c != w2[i]
      counter += 1
      return false if counter > 1
    end
  end
  return false if counter == 0
  return true
end

p ladder_length('hit', 'cog', ['hot', 'dot', 'dog', 'lot', 'log'])
