--[[
  Author: Alex
]]

function writeFile()
  --Pocetni text
  io.write("\t", "~~~~~~Welcome!~~~~~~", "\n")
  io.write("*Mini CLI database", "\n")
  io.write("*Your data is stored in text documents", "\n")

  io.write("\n")

  --Unos podataka
  io.write("Enter your data: ")
  local data = io.read()

  local file = io.open("data.txt", "w")
  file:write(tostring(data))
  file:seek("set", 0)
  file:close()

  io.write("\n")
  io.write("~~~~~~~~~~~", "\n")
  io.write("Your data is stored in data.txt file!", "\n")
  io.write("~~~~~~~~~~~")
end

writeFile()