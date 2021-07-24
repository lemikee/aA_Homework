# Exercise 1 - Stack

class Stack
    def initialize
      @store = []
    end

    def push(el)
      store.push(el)
    end

    def pop
      store.pop
    end

    def peek
        store.last
    end

    def empty
        size == 0
    end

    private
    attr_reader : store
end

# Exercise 2 - Queue
class MyQueue # because Ruby has built in Queue class
    def initialize
        @store = []
    end

    def enqueue(val)
        @store.push(val)
    end

    def dequeue
        @store.shift
    end

    def show
        print store
    end

    def empty
        size == 0
    end

    def size
        size
    end

    private

    attr_reader :store
end

# Exercise 3 - Map Class
class Map
    def initialize
        map = []
    end

    def set(key, value)
        pair_idx = map.index { |pair| pair.first == key}
        pair_idx ? map[pair_idx] = [key, value] : map.push([key, value])
        # if pair_idx
        #     map[pair_idx] = [key, value]
        # else
        #     map.push([key,value])
        # end
    end

    def get(key)
        map.select { |pair| pair.first == key }.first
    end

    def delete(key)
        map.reject! { |pair| pair.first == key }
    end

    def show
        print map
    end

    Private
    attr_reader :map
end