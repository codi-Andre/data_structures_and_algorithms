# Binary Search

## Binary Search (easy)

You are given an array of distinct integers `nums`, sorted in ascending order, and an integer `target`.

Implement a function to search for `target` within `nums`. If it exists, then return its index, otherwise, return `-1`.

Your solution must run in O(log n) time.

Example 1:

```
Input: nums = [-1,0,2,4,6,8], target = 4

Output: 3
```

Example 2:

```
Input: nums = [-1,0,2,4,6,8], target = 3

Output: -1
```

Constraints:

- `1 <= nums.length <= 10000`.
- `-10000 < nums[i], target < 10000`
- All the integers in `nums` are unique.

Recommended Time & Space Complexity:

You should aim for a solution with `O(log n)` time and `O(1)` space, where `n` is the size of the input array.



## Search a 2D Matrix (medium)

You are given an `m x n` 2-D integer array `matrix` and an integer `target`.

- Each row in `matrix` is sorted in non-decreasing order.
- The first integer of every row is greater than the last integer of the previous row.

Return `true` if `target` exists within `matrix` or `false` otherwise.

Can you write a solution that runs in `O(log(m * n))` time?

Example 1:
```
┌────┬────┬────┬────┐
│  1 │  2 │  4 │  8 │
├────┼────┼────┼────┤
│ 10 │ 11 │ 12 │ 13 │
├────┼────┼────┼────┤
│ 14 │ 20 │ 30 │ 40 │
└────┴────┴────┴────┘

Input: matrix = [[1,2,4,8],[10,11,12,13],[14,20,30,40]], target = 10

Output: true
```

Example 2:
```
┌────┬────┬────┬────┐
│  1 │  2 │  4 │  8 │
├────┼────┼────┼────┤
│ 10 │ 11 │ 12 │ 13 │
├────┼────┼────┼────┤
│ 14 │ 20 │ 30 │ 40 │
└────┴────┴────┴────┘

Input: matrix = [[1,2,4,8],[10,11,12,13],[14,20,30,40]], target = 15

Output: false
```

Constraints:

- `m == matrix.length`
- `n == matrix[i].length`
- `1 <= m, n <= 100`
- `-10000 <= matrix[i][j], target <= 10000`

Recommended Time & Space Complexity:

You should aim for a solution with `O(log(m * n))` time and `O(1)` space, where `m` is the number of rows and `n` is the number of columns in the matrix.
