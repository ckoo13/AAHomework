require 'set'

class GraphNode
  attr_accessor :val, :neighbors

  def initialize(val)
    self.val = val
    self.neighbors = []
  end

  def add_neighbor(node)
    self.neighbors << node
  end
end

def bfs(starting_node, target_value)
  #adding the starting_node to our queue that we want to implement in BFS
  queue = [starting_node]
  #creating our Set to keep track of our visited nodes
  visited = Set.new()

  #running the loop until our queue is empty because thats how we know we have completed BFS
  until queue.empty?
    #dequeueing the node that we are currently looking at
    node = queue.shift
    #if we have already visited the node we don't have to look at it again
    unless visited.include?(node)
      #if the node that we are looking is our target value then we just return that node
      return node.val if node.val == target_value
      #if it is not we add it to our set
      visited.add(node)
      #add the neighbors of the node to our queue
      queue += node.neighbors
    end
  end
  #return nil if we never found the target
  return nil
end