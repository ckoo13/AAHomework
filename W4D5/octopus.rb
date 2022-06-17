require "byebug"

def sluggish(array)
    longest = array.first
    (0..array.length - 2).each do |i|
        (1..array.length - 1).each do |j|
            if array[i].length < array[j].length
                longest = array[j]
            end
        end
    end

    longest
end

# p sluggish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
#     'fiiiissshhhhhh'])

#merge sort
def merge_sort(array)
    return array if array.length <= 1

    middle = array.length / 2

    
    left = array[0...middle]
    right = array[middle..-1]

    sorted = merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
    merged = []
    
    until left.empty? || right.empty?
        if left.first.length < right.first.length
            merged << left.shift
        elsif left.first.length == right.first.length
            merged << left.shift
        elsif left.first.length > right.first.length
            merged << right.shift
        end
    end

    merged + left + right
end

def dominant(array)
    sorted = merge_sort(array)

    return sorted.last
end

# p dominant(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
#     'fiiiissshhhhhh'])

def clever(array)
    longest = array.first

    for string in array do
        if  string.length > longest.length
            longest = string
        end
    end

    longest
end

# p clever(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
#     'fiiiissshhhhhh'])

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
    "left",  "left-up" ]

def slow(string, array)
    index = 0

    (0...array.length).each do |i|
        if array[i] == string
            index = i
        end 
    end

    index
end

# p slow("up", tiles_array)

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def constant(string, hash)
    index = 0

    if hash.has_key?(string)
        index = hash[string]
    end

    index
end

# p constant("up", tiles_hash)