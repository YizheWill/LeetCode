# Example 1:

# Input: poured = 1, query_row = 1, query_glass = 1
# Output: 0.00000
# Explanation: We poured 1 cup of champange to the top glass of the tower (which is indexed as (0, 0)). There will be no excess liquid so all the glasses under the top glass will remain empty.
# Example 2:

# Input: poured = 2, query_row = 1, query_glass = 1
# Output: 0.50000
# Explanation: We poured 2 cups of champange to the top glass of the tower (which is indexed as (0, 0)). There is one cup of excess liquid. The glass indexed as (1, 0) and the glass indexed as (1, 1) will share the excess liquid equally, and each will get half cup of champange.
# Example 3:

# Input: poured = 100000009, query_row = 33, query_glass = 17
# Output: 1.00000

def champagne_tower(gp, qr, qc)
  pyramid = []
  (1..qr + 1).each do |i|
    pyramid << Array.new(i, 0)
  end
  pyramid[0][0] = gp
  (0..qr + 1).each do |r|
    (0..r + 1).each do |c|
      q = (pyramid[r][c] - 1.0) / 2.0
      if q > 0
        pyramid[r + 1][c] += q
        pyramid[r + 1][c + 1] += q
      end
    end
  end
  return min(1, pyramid[qr][qc])
end
