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
      queue.push(el)
    end

    def dequeue
      queue.shift
    end

    def peek
      queue.first
    end
    private
    attr :queue
  end



  class Map
    def initialize
      @map = []
    end

    def set(key, value)
    end

    def get(key)
    end
    
    def delete(key)
    end
    
    def show
    end
  end

