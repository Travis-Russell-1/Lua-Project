----------------------------------------------
-- create new table to hold the board matrix
----------------------------------------------
local board = {}

----------------------------------------------
-- clear the board table
----------------------------------------------
function Clear_board()
  for i = 1, 3 do
    -- new row
    board[i] = {}
    for j = 1, 3 do
      board[i][j] = " "
    end
  end
end

----------------------------------------------
-- display the board table
----------------------------------------------
function Display_board()
  -- TODO:
  -- Loop all positions of the board
  -- and display the values in the console
end

----------------------------------------------
-- is board full
----------------------------------------------
function Board_full()
  -- TODO:
  -- Loop all positions of the board
  -- and check if they are all populated
  -- returning true (full) or false (not full)
end

-----------------------------------------------
-- function to check and return the winnner
-----------------------------------------------
function Check_winner()
  -- TODO:
  -- Check all rows, columsn, and diagonals
  -- to see if there is a winner.
  -- If there is one, return "X" or "O"
end

-----------------------------------------------
-- game starts
-----------------------------------------------
local player = "X"
local move = 1
local game_over = false

Clear_board()

-- game loop
while not game_over do
  Display_board()

  print("Enter the row you want to place the symbol " .. player .. ": ")
  local row_to_play = io.read("*n")
  print("Enter the col you want to place the symbol " .. player .. ": ")
  local col_to_play = io.read("*n")

  -- assign current player if the move is even or odd
  if move % 2 == 0 then
    player = "X"
  else
    player = "O"
  end

  move = move + 1

  -- check if there is a winner
  local winner = Check_winner()

  if winner ~= nil then
    Display_board()
    print("Winner is " .. winner)
    game_over = true
  elseif Board_full() then
    print("Tie")
    game_over = true
  end
end
