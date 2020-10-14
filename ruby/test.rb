class Array
  def my_join(separator = "")
    self.inject { |a, e| a += "#{separator}#{e}" }
  end
end

p %w(a b c d).my_join("$")
