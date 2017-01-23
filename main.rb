require 'json'
#orderData contains the orders details
file = File.read('data.json')
orderData = JSON.parse(file)

#totalPriceArray is the array where will be stored the total_price of each orders
totalPriceArray = Array.new

# price is the temporary variable to cast the "total_price" string variable to a float
price = 0

orderData["orders"].each do |itm|
  price = itm["total_price"].to_f
  totalPriceArray.push(price)
end

puts "#{totalPriceArray}"

sumTotalPrice = totalPriceArray.inject(0,:+)
puts "the total revenue of my online store is #{sumTotalPrice}. Off to Brazil peeps!"
