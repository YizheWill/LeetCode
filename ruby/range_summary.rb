def summary_ranges(nums)
    summary = []
    prev_num = nil
    range_start = nil
    nums.each do |num|
        if range_start.nil?
            range_start = num
        elsif prev_num + 1 != num
            add_range_to_summary(range_start, prev_num, summary)
            range_start = num
        end
        prev_num = num
    end
    if !range_start.nil?
        add_range_to_summary(range_start, prev_num, summary)
    end

    return summary
end

def add_range_to_summary(range_start, prev_num, summary)
    if range_start == prev_num
        summary << "#{range_start}"
    else
        summary << "#{range_start}->#{prev_num}"
    end
end
