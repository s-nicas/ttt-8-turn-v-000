def display_board(board) 
  puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
  
end 
 

def valid_move?(board, index)
 if position_taken?(board, index) == false && index.between?(0,8)
    return true
  else 
    return false 
 end 
end 


def position_taken?(board, index)
  if board[index] ==" " || board[index] == "" || board[index] == nil
    return false 
    
  else 
    return true
  end
end 




def input_to_index(user_input)
 number = user_input.to_i
 index = number - 1 
 return index 
end


def move(board, index, player_character="X")
  board[index]=player_character
  return board 
  
end  

def turn(board)
  puts "Please enter 1-9:"
  users_input=gets.strip
  index = input_to_index(users_input)
  if valid_move?(board, index)
    move(board, index, player_character ="X")
    display_board(board)
  else turn(board)
  end 
    
end  

  
