-- Initialize a variable with an email address
local email = "gustavo@pikuma.com"

-- Performs some checks to see if the email is valid
local at_char = string.find(email, "%@")
local dot_char = string.find(email, "%.")
local space_char = string.find(email, " ")

-- We add a % in front of the character to avoid Lua replacing those characters
-- with special values.
-- For example "." is a pattern that represents *all characters*

-- Test if we have no spaces but found both @ and .
if (not space_char) and (at_char and dot_char) then
  -- Test if . appears before the @, since .find() return the position
  if at_char < dot_char then
    print("Valid email!")
  else
    print("Invalid. There is a . before the @ sign.")
  end
else
  print("Invalid email! No @ sign, or no . sign, or spaces found.")
end
