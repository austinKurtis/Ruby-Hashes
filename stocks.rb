stock_dict = { 'GM' => 'General Motors',
 'CAT' => 'Caterpillar', 'EK' => "Eastman Kodak" }

 purchases = [ [ 'GM', 100, '10-sep-2001', 48 ],
 [ 'CAT', 100, '1-apr-1999', 24 ],
 [ 'GM', 200, '1-jul-1998', 56 ] ]



	purchases.each do |sub_array|
		stock_costs = sub_array.values_at(1,3).inject(:*)
		stock_symbols = sub_array.values_at(0)
		stock_name = stock_dict[stock_symbols]
		stock_date = sub_array.values_at(2)
		puts "#{stock_name} #{stock_date} $#{stock_costs}" 

	end