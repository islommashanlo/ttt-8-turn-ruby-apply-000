def display_board(array, index, value)



#position_taken
  def position_taken?(board, index)
    if board[index] == " " or board[index] == "" or board[index] == nil
      then return false
    elsif board[index] == "X" or board[index] == "O"
      then return true
    end
  end
