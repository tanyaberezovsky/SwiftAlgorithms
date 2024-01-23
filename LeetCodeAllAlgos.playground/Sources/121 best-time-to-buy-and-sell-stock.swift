import Foundation

public func maxProfit(_ prices: [Int]) -> Int {
    var minPrice = prices[0]
        var maxProfit = 0

        for price in prices {
            minPrice = min(minPrice, price)  // Track the minimum price seen so far
            maxProfit = max(maxProfit, price - minPrice)  // Calculate potential profit
        }

        return maxProfit
   
}


