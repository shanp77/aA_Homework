require "byebug"

class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack.push(el)
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
  end

 

  class Queue
    def initialize
      # create ivar to store stack here!
      debugger
      @queue = []
    end

    def enqueue(el)
      
      @queue.push(el)
    end

    def dequeue
      @queue.shift
    end

    def peek
      @queue[0]
    end
  end

  class Map
 # Can NOT figure out why it won't initialize my map in initialize method, before running set??
    def intitialize
        @map = Array.new { Array.new } 
       
    end

    def set(key, value)
        exists = false
        if @map != nil
        exists = @map.any? {|el| el[0] == key} 
        else
            @map = [key, value]
        end

        if exists
            @map.each do |el|
                el[1] = value if key = el[0]
            end
        else
            @map << [key, value]
        end
    end

    def get(key)
          @map.each do |el|
            return el[1] if key = el[0]
          end
          nil
    end

    def delete(key)
        @map.each.with_index do |el, i|
            if key = el[0]
                first = @map.take(i)
                last = map[i + 1..-1]
                @map = first.concat(last)
            end
        end
        nil
    end
        
    def show
        return if @map == nil
        @map.each do |el|
            p el
        end
    end
  end

  map = Map.new
  map.set(5, "five")
  map.set(6, "six")
  map.show