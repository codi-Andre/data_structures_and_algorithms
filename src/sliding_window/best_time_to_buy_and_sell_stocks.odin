package sliding_window

// Time complexity: O(n) | Space complexity: O(1)

max_profit :: proc(prices: []int) -> (profit: int) {
	for l, r := 0, 0; r < len(prices); r += 1 {
		if prices[r] < prices[l] do l = r
		if profit < prices[r] - prices[l] do profit = prices[r] - prices[l]
	}
	return
}
