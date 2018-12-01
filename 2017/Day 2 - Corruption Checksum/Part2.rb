require 'csv'
#I converted the input to csv using a find/replace on the characters previously separating the values
$totalHash=0
CSV.foreach("input.csv") do |row|
	for item in row do
		for itemcmp in row do
			if item.b.to_i == itemcmp.b.to_i
				next
			end
			if item.b.to_i % itemcmp.b.to_i == 0
				$totalHash += item.b.to_i / itemcmp.b.to_i
			end
		end
	end
end

p $totalHash