class Stack
    def initialize
        @stack = []
    end

    def push(ele)
        @stack.push(ele)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end
end

#answer from demo
# class Stack
#     def initialize
#         @store = []
#     end

#     def push(ele)
#         @store.push(ele)
#         self
#     end

#     def inspect
#         "#<Stack: #{self.object_id}>"
#     end

#     def peek
#         @store.last
#     end

#     def size
#         @store.length
#     end

#     def empty?
#         @store.empty?
#     end

#     def pop
#         @store.pop
#     end 
# end