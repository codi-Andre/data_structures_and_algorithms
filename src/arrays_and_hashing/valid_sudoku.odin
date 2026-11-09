package arrays_and_hashing

// Time complexity: O(n²) | Space complexity: O(n)

is_valid_sudoku :: proc(board: [][]rune) -> bool {
	cols: [9]bit_set['1'..='9']
	rows: [9]bit_set['1'..='9']
	grids: [9]bit_set['1'..='9']

	for r := 0; r < 9; r += 1 {
		for c := 0; c < 9; c += 1 {
			if board[r][c] == '.' do continue
			g := (r/3)*3 + c/3

			if board[r][c] in cols[c] || board[r][c] in rows[r] || board[r][c] in grids[g] do return false

			cols[c] += {board[r][c]}
			rows[r] += {board[r][c]}
			grids[g] += {board[r][c]}
		}
	}
	return true
}
