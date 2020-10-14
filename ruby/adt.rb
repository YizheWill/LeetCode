class Stack
  def initialize
    @stack = []
  end

  def push(el)
    @stack.push(el)
  end

  def pop
    @stack.pop
  end

  def peep
    @stack.last
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end
end

class Map
  def initialize
    @map = []
  end

  def set(key, val)
    has_key = false
    @map.each do |e|
      if e.first == key
        e[1] = val
        has_key = true
      end
    end
    @map << [key, val] if !has_key
    @map
  end

  def get(key)
    @map.each do |ele|
      if ele.first == key
        return ele.last
      end
    end
    return nil
  end

  def delete(key)
    @map.each do |ele|
      if ele.first == key
        res = ele
        @map.delete(ele)
        return res
      end
    end
    return nil
  end

  def show
    @map
  end
end
