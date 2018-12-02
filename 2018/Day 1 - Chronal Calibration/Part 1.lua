fh,err = io.open("input.txt")
if err then print("Error reading file") return; end

value = 0

while true do
        line = fh:read()
        if line == nil then break end
        value = value + tonumber(line)
end

fh:close()

print(value)