class TicTacToe
  
  attr_accessor :board
  
def initialize
    @board = board || Array.new(9, " ")
end
  
  WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[6,4,2]]

def display_board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
      
      
def input_to_index(input)
  input.to_i - 1
  # binding.pry
end
  
def move( index, token = "x")
    board[index] = token
    
end
  

def position_taken?(index)
    board[index] != " "
    
end


def valid_move?(index) 
  index.between?(0,8) && !position_taken?(index)
  
end

def turn
  puts "Where would you like to go?"
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(index)
    current_player(index, "X")
      display_board
    else
      puts "That was invalid, try again."
      turn
end
end
    
def turn_count
  board.count {|cell| cell !=" "}
end

def current_player
  if turn_count.odd?
    "O"
  else
    "X"
end
end

def won?
  winning_combo = nil 
 
 WIN_COMBINATIONS.each do |combo|
   position_1 = combo[0]
   position_2 = combo[1]
   position_3 = combo[2]
   
   if board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X"
     
     winning_combo = combo
     
     elsif board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"
     
     winning_combo = combo




end 
end
end


end

