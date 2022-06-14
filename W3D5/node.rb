class Node
    attr_reader :value, :children

    def initialize(value, children=[])
        @value = value
        @children = children
    end
end

#           a
#       b       c
#    d    e   f    g

#Leaf Nodes
d = Node.new("d")
e = Node.new("e")
f = Node.new("f")
g = Node.new("g")

#Internal Nodes
b = Node.new("b", [d,e])
c = Node.new("c", [f,g])

#Root Node
a = Node.new("a", [b,c])
root_node = a

#find g
root_node.children[1].children[1]


