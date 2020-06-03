local students = {
  {name = "Miles Davis", instrument = "trumpet"},
  {name = "John Coltrane", instrument = "saxophone"},
  {name = "Bill Evans", instrument = "piano"},
  {name = "Wynton Kelly", instrument = "piano"}
}

table.sort(
  function(a, b)
    return a.name > b.name
  end
)

print("PLease select")
local user_option = io.read("*n")
