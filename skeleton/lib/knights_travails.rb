class KnightPathFinder
  MOVES = [[-1,2], [1,2], [2,1], [2,-1], [1,-2], [-1,-2], [-2,-1], [-2,1]]


   def initialize(arr_pos)
     @starting_pos = arr_pos
     @move_tree = self.build_move_tree
     @visited_positions = [starting_pos]
   end

   def build_move_tree

   end

   def find_path(final_destination)

   end

   def self.valid_moves(pos)

   end

   def new_move_positions(pos)

   end

end
