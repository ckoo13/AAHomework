class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        @val = val
        @neighbors = []
    end

    def add_neighbor(node)
      self.neighbors << node
    end
    
    #breadth first search
    def bfs(start_node, target)

    end 

    #depth first search (graph traversal w/ graph node)
    def depth_first_node(node, visited = Set.new())
        # if this node has already been visited, then return early
        return nil if (visited.include?(node.val))
      
        # otherwise it hasn't yet been visited,
        # so print its val and mark it as visited.
        puts node.val
        visited.add(node.val)
      
        # then explore each of its neighbors
        node.neighbors.each do |neighbor|
          depth_first(neighbor, visited);
        end
    end

    #depth first search (graph traversal w/ adjacency list)
    #the first function is iterative through the keys of the adjacency list which are nodes
        #this main method is what allows to bridge the gap between disconnected regions
    def depth_first(graph)
        visited = Set.new()
        # this is iterating through all the keys in the adjacency list
            #there for once the recursive method ends after we have explore one region -> the method will continue iterating
                #until we reach an unvisited node which is the unexplored region of the graph and repeat the process for that one too
                #note that we keep track of visited nodes with a set
        graph.keys.each do |node|
          _depth_first(node, graph, visited)
        end
      end
    
    #recursive method is similar to the one before where we explore a full connnected region in a graph
    def _depth_first(node, graph, visited)
        return nil if visited.include?(node.to_sym)
      
        puts node
        visited.add(node.to_sym)
      
        graph[node.to_sym].each do |neighbor|
          _depth_first(neighbor, graph, visited)
        end
    end


end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]


