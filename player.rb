
    #keeps track of a player's name and whether they are an 'X' or an 'O'
    # a player's 'color' refers to whether they are an 'X' or an 'O'
    class Player
        attr_reader :color, :name
        def initialize(input) #input will be a hash containing the player's name
        #and color
           @color = input.fetch(:color)
           @name = input.fetch(:name)
        end
        
    end
    

        