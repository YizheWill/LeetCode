def find_number_of_lis(nums)
    return 0 if nums.empty?
    @nums = nums
    @dp = Array.new(nums.size).map{ Array.new(2)}
    (0...nums.size).each do |i|
        rec(i)
    end
    max = @dp.max_by{|x| x[0]}[0]
    @dp.select{|x| x[0]== max}.sum{|x| x[1]}
    
end

def rec(index)
    return @dp[index] if @dp[index][0]
    answers = []
    (index+1...@nums.size).each do |j|
        if @nums[j] > @nums[index] # Scirtly increasing subSequence
            tmp = rec(j)
            answers.push(tmp)
        end
    end
    size = 0
    amount = 0
    if answers.empty?
        size = 1
        amount = 1
    else
        maximum = answers.max_by{|x| x[0]}[0]
        size = 1 + maximum
        amount = answers.select{|x| x[0] == maximum}.sum{|x| x[1]}
    end
    @dp[index][0] = size
    @dp[index][1] = amount
    @dp[index]
end
