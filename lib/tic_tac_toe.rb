class TicTacToe
  attr_reader :board 
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
    ]
   
   def initialize
     @board = Array.new(9," ")
   end 
   
   def display_board
     puts " #{board[0]} | #{@board[1]} | #{@board[2]} "
     puts "-----------"
     puts " #{board[3]} | #{@board[4]} | #{@board[5]} "
     puts "-----------"
     puts " #{board[6]} | #{@board[7]} | #{@board[8]} "
     puts "-----------"
   end 
   
   def input_to_index(input)
     input.to_i - 1
   end 
   
   def move(index, token = "X")
     @board[index] = token 
   end 
   
   def position_taken?(index) 
      if @board[index] =="X" || @board[index] == "O"
        true 
      else 
        false 
      end 
   end 
   
   def valid_move?(index)
     index.between?(0,8) && !position_taken?(index)
   end 
   
   def turn_count
     counter = 0 
     @board.each do |index|
       if index == "X" || index == "O"
         counter += 1 
       end 
     end
     counter 
   end 
   
   
end 

game = TicTacToe.new 

game.move(0,"X")
game.move(4,"O")
game.display_board