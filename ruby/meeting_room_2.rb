def min_meeting_rooms(intervals)
  return 0 if intervals.empty?
  intervals.sort!
  end_time_queue = Heap.new
  end_time_queue.enqueue(intervals.shift)
  counter = 1
  (0...intervals.length).each do |i|
    if intervals[i].first < end_time_queue.peek.last
      end_time_queue.dequeue
      counter += 1
    end
    end_time_queue.enqueue(intervals[i])
  end
  counter
end

class Heap
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue << item
    @queue.sort! { |a, b| a.last <=> b.last }
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end
end

p min_meeting_rooms([[0, 30], [5, 10], [15, 20]])
