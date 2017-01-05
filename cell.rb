
    #the cell class keeps track of a cell's value and is initialized
    #with a default value of ""
    class Cell
        attr_accessor :value
        def initialize(value = "")
            @value = value
        end
    end
