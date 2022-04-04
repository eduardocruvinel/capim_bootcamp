require_relative 'tic_tac_toe_methods.rb'

puts "Let us start our game! The X symbol player starts! Who will start playing?"
puts "If the human wants to start the game, type human, otherwise, type machine."

$choice = start_validation

empty_table = Matrix[["", "", ""], ["", "", ""], ["", "", ""]]

puts empty_table.mark_table