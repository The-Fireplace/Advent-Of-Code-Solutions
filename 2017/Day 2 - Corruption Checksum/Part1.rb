require 'csv'
#I converted the input to csv using a find/replace on the characters previously separating the values
$totalHash=0
CSV.foreach("input.csv") do |row|
	$min=100000
	$max=0
	for item in row do
		if item.b.to_i < $min
			$min = item.b.to_i
		end
		if item.b.to_i > $max
			$max = item.b.to_i
		end
	end
	$totalHash += $max - $min
end

p $totalHash