class Queue
    attr_reader :last_item

    def initialize
        @queue = []
        @last_item = last_item
    end

    def enqueue(ele)
        p "Would you like to add to the front or back: Please enter 'front' or 'back'"

        input = gets.chomp 

        if input == 'front'
            @queue.unshift(ele)
            @last_item = ele
        elsif
            @queue.push(ele)
            @last_item = ele
        end
    end

    def dequeue
        if @queue.index(0) == @last_item
            @queue.shift
        elsif @queue.index(@queue.length - 1) == @last_item
            @queue.pop
        end
    end

    def peek
        @last_item
    end
end


#answer from demo
# class MyQueue
#     def initialize
#         @store = []
#     end

#     def enqueue(ele)
#         @store.unshift(ele)
#         self
#     end

#     def dequeue
#         @store.pop
#     end

#     def show
#         p @store
#         nil
#     end

#     def inspect
#         "#<Queue: #{self.object_id}>"
#     end

# end

