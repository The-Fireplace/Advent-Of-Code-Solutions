value = 0
maxIndex = 1
freqs = {}
freqs[1] = 0
brk = false

function tablecontains(table, element)
  for _, value in ipairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

while true do
    for line in io.lines("input.txt") do
        value = value + tonumber(line)
		if tablecontains(freqs, value) then
			print(value)
			brk = true
		end
		if brk then break end
		maxIndex = maxIndex + 1
		freqs[maxIndex] = value
	end
	if brk then break end
end