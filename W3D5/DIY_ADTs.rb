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

    def peek
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
      @queue.shift
    end

    def peek
      @queue.first
    end
  end



  class Map
    # need sleep. will finish tommorow
  end

