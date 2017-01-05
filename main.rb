require_relative "board"
require_relative "cell"
require_relative "core_extensions"
require_relative "game"
require_relative "player"


puts "Welcome to Tic Tac Toe!"
bob = Player.new({color:"X", name:"bob"})
frank = Player.new({color:"O", name:"frank"})
players = [bob, frank]
Game.new(players).play