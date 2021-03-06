def turn(board)
  puts "Please enter 1-9:"
  number = input_to_index(gets.strip)
  until valid_move?(board, number)
    puts "Error. Please enter 1-9:"
    number = input_to_index(gets.strip)
    valid_move?(board, number)
  end
  move(board, number)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)

    if (!position_taken?(board, index) && ((index>-1) && (index<9)))
        return true
    else
      return false
    end
end


def input_to_index(input)
  return (input.to_i)-1
end


def move(board,index,character = "X")
    board[index] = character
  return board
end


def position_taken?(board, index)
  if ((board[index] == " ") || (board[index] == "") || (board[index] == nil))
    return false
  else
    return true
  end
end
