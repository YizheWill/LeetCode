def min_meeting_rooms(intervals)
  return 0 if intervals.empty?
  return 1 if intervals.length == 1
  intervals.sort!
  heap = Heap.new
  heap.push(intervals[0].last)
  min = 1
  (1...intervals.length).each do |i|
    if intervals[i].first < intervals[i - 1].last
      min_cand = heap.how_many_greater(intervals[i].first)
      if min < min_cand
        min = min_cand
      end
    end
    heap.push(intervals[i].last)
  end
  min + 1
end

class Heap
  def initialize
    @queue = []
  end

  def push(el)
    @queue.push(el)
    @queue.sort!
  end

  def how_many_greater(num)
    @queue.count { |n| n > num }
  end
end

p min_meeting_rooms([[0, 30], [5, 10], [15, 20]])
