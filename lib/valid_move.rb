# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(1, 9) == true
    true
  elsif index.between?(1, 9) == false
      false
  elsif position_taken?(board, index) == true
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end
