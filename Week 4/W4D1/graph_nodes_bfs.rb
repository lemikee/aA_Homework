require "set"

class GraphNode
    attr_accessor :value, :neighbors

    def initialization(value)
        @value = value
        @neighbors = []
    end

    def add_neighbors(node)
        neighbors << node
    end

    def bfs(start_node, target)
        queue = [start_node]
        visited_nodes = Set.new

        until queue.empty?
            node = queue.shift
            unless visited_nodes.include?(node)
                return node.value if node.value == target
                visited_nodes.add(node)
                queue += node.neighbors
            end
        end

        nil
    end
end