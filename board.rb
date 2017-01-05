
   #the board class manages the tic-tac-toe grid by getting and setting
   #all of the grid values and checking if the game has ended in a 
   #draw or a player has won
    class Board
      attr_reader :grid
      def initialize(input = {})
          #if :grid is undefined, default_grid is returned
          @grid = input.fetch(:grid, default_grid) 
      end
      
      
        
      def default_grid
          #Creates a 3x3 grid of cell objects [[Cell, Cell, Cell], 
          #[Cell, Cell, Cell], [Cell, Cell, Cell]]
          
          Array.new(3){Array.new(3){Cell.new}} 
      end
      
      def formatted_grid
        grid.each do |row|
            puts row.map { |cell| cell.value.empty? ? "_" : cell.value }.join(" ")
        end
      end
      
      def get_cell(x, y)
          grid[y][x]
      end
      
      def set_cell(x, y, value)
         get_cell(x, y).value = value 
      end
      
      def game_over #assesses the grid to determine if there is a winner, a 
      #draw, or the game still needs to be played
         return :winner if winner?
         return :draw if draw?
         false
      end
      
      def draw?
          grid.flatten.map{|cell| cell.value}.none_empty?
      end
      
      def winning_positions #returns an array of the 8 winning positions
         grid + #rows
         grid.transpose + #columns
         diagonals
      end
      
      def diagonals #two diagonal winning positions
          
         [[get_cell(0,0), get_cell(1,1), get_cell(2,2)],
         [get_cell(0,2), get_cell(1,1), get_cell(2,0)]]
      end
      
      def winner?
         winning_positions.each do |winning_position|
            next if winning_position_values(winning_position).all_empty?
            return true if winning_position_values(winning_position).all_same?
         end
         return false
      end
      
      def winning_position_values(winning_position)
        winning_position.map{|cell| cell.value}
      end
    end
