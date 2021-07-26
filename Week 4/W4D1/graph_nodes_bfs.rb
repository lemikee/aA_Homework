require "set"

class GraphNode
    attr_accessor :value, :neighbors

    def initialization(value)
        @value = value
        @neighbors = []
    end
end