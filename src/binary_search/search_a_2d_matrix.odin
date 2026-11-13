package binary_search

// Time complexity: O(log(n + m)) | Space complexity: O(1)

search_matrix :: proc(matrix_array: [][]int, target: int) -> bool {
	cols, rows := len(matrix_array[0]), len(matrix_array)
	l, r := 0, cols * rows - 1

	for l <= r {
		m := l + (r - l) / 2
		col, row := m / cols, m % cols
		if matrix_array[row][col] < target {
			l = m + 1
		} else if matrix_array[row][col] > target {
			r = m - 1
		} else {
			return true
		}
	}
	return false
}
