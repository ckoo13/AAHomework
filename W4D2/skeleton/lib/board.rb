require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new()}
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |array, i|
      if i != 6 && i != 13
        4.times do
          array << :stone
        end
      end
    end

  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 13
      raise "Invalid starting cup"
    end

    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    # debugger
    stones = @cups[start_pos]
    #empty the selected cup
    @cups[start_pos].clear
    
    #need to iterate from start_pos and place stones in each cup
      #if it is a player cup (6 or 13)
        #then only place if it is the current player's cup
        #do not place if it is not current player's cup
    idx = start_pos

    while !stones.empty?
      if @cup[idx] == current_player_name.side
    end


    #call render at the end of each turn
    self.render

    #call next_turn
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? { |array| array.empty?} || @cups[7..12].all? { |array| array.empty?}
  end

  def winner
  end
end
