require "byebug"
class Map
    def initialize
        @map = []
    end

    def set(key,value)
        pair = []
        pair << key
        pair << value
        @map << pair
    end

    def get(key)
        target_key = nil

        @map.each do |ele|
            if ele.first == key
                target_key = ele.first
            end
        end
        # debugger
        if target_key.nil?
            return nil
        else
            return target_key
        end
    end

    def delete(key)
        @map.each do |ele|
            if ele.first == key
                @map.delete(ele)
            end
        end
    end 

    def show
        @map
    end
end