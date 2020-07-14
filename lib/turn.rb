#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#converted_input
def input_to_index(user_input)
  index = "#{user_input}".to_i
  index -= 1
  return index
end
#position_taken
def position_taken?(board, index)
    if board[index] == " " or board[index] == "" or board[index] == nil
      then return false
    elsif board[index] == "X" or board[index] == "O"
      then return true
    end
  end
#valid_move
def valid_move?(board, index)
    if position_taken?(board, index) == false and index.between?(0,8)
      then true
    else
      false
    end
end
#move
def move(board, index, value = "X")
  board[index] = value
    return board
end
#turn
def turn(board)
    puts "Please enter 1-9 to make your move"
    user_input = gets.strip
    index = input_to_index
  if valid_move?(board, index) == true
    then move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
