require "./game.rb"
require "./result_printer.rb"

printer = ResultPrinter.new

word = ARGV[0]

game = Game.new(word)

while game.status == 0 do 
  printer.print_status(game)
  
  game.ask_next_letter
end

printer.print_status(game)