require_relative "00_tree_node"

class KnightPathFinder
  MOVES = [[-1,2], [1,2], [2,1], [2,-1], [1,-2], [-1,-2], [-2,-1], [-2,1]]
  attr_reader :starting_pos, :visited_positions, :move_tree

   def initialize(arr_pos)
     @starting_pos = arr_pos
     @move_tree = self.build_move_tree
     @visited_positions = [starting_pos]
   end

   def build_move_tree
    #  queue = [self]
    #  until queue.empty?
    #    current_node = queue.shift
    #    return current_node if current_node.value == target_value
    #    queue.concat(current_node.children)
    #  end
    #  nil
   end

   def find_path(final_destination)

   end

   def self.valid_moves(pos)
     all_moves = []
     x, y = pos
     MOVES.each_with_index do |array, i|
       x_check = x + array[0]
       y_check = y + array[1]
       if x_check.between?(0,7) && y_check.between?(0,7)
         all_moves << array
       end
     end
     all_moves
   end

   def new_move_positions(pos)
     if KnightPathFinder.valid_moves(pos) && !@visited_positions.include?(pos)
       @visited_positions << pos
       return pos
     end
   end

end
