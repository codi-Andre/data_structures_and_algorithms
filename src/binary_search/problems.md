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



## Koko Eating Bananas (medium)

You are given an integer array `piles` where `piles[i]` is the number of bananas in the `ith` pile. You are also given an integer `h`, which represents the number of hours you have to eat all the bananas.

You may decide your bananas-per-hour eating rate of `k`. Each hour, you may choose a pile of bananas and eats `k` bananas from that pile. If the pile has less than `k` bananas, you may finish eating the pile but you can not eat from another pile in the same hour.

Return the minimum integer `k` such that you can eat all the bananas within `h` hours.

Example 1:

```
Input: piles = [1,4,3,2], h = 9

Output: 2
```

Explanation: With an eating rate of 2, you can eat the bananas in 6 hours. With an eating rate of 1, you would need 10 hours to eat all the bananas (which exceeds h=9), thus the minimum eating rate is 2.

Example 2:

```
Input: piles = [25,10,23,4], h = 4

Output: 25
```

Constraints:

- `1 <= piles.length <= 10,000`
- `piles.length <= h <= 1,000,000,000`
- `1 <= piles[i] <= 1,000,000,000`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n log m)` time and `O(1)` space, where `n` is the size of the input array, and `m` is the maximum value in the array.



## Find Minimum in Rotated Sorted Array (medium)

You are given an array of length `n` which was originally sorted in ascending order. It has now been rotated between `1` and `n` times. For example, the array `nums = [1,2,3,4,5,6]` might become:

- `[3,4,5,6,1,2]` if it was rotated `4` times.
- `[1,2,3,4,5,6]` if it was rotated `6` times.

Notice that rotating the array `4` times moves the last four elements of the array to the beginning. Rotating the array `6` times produces the original array.

Assuming all elements in the rotated sorted array `nums` are unique, return the minimum element of this array.

A solution that runs in `O(n)` time is trivial, can you write an algorithm that runs in `O(log n)` time?

Example 1:

```
Input: nums = [3,4,5,6,1,2]

Output: 1
```

Example 2:

```
Input: nums = [4,5,0,1,2,3]

Output: 0
```

Example 3:

```
Input: nums = [4,5,6,7]

Output: 4
```

Constraints:

- `1 <= nums.length <= 1000`
- `-1000 <= nums[i] <= 1000`

Recommended Time & Space Complexity:

You should aim for a solution with `O(log n)` time and `O(1)` space, where `n` is the size of the input array.



## Search in Rotated Sorted Array (medium)

You are given an array of length `n` which was originally sorted in ascending order. It has now been rotated between `1` and `n` times. For example, the array `nums = [1,2,3,4,5,6]` might become:

- `[3,4,5,6,1,2]` if it was rotated `4` times.
- `[1,2,3,4,5,6]` if it was rotated `6` times.

Given the rotated sorted array `nums` and an integer `target`, return the index of `target` within `nums`, or `-1` if it is not present.

You may assume all elements in the sorted rotated array `nums` are unique,

A solution that runs in `O(n)` time is trivial, can you write an algorithm that runs in `O(log n)` time?

Example 1:

```
Input: nums = [3,4,5,6,1,2], target = 1

Output: 4
```

Example 2:

```
Input: nums = [3,5,6,0,1,2], target = 4

Output: -1
```

Constraints:

- `1 <= nums.length <= 1000`
- `-1000 <= nums[i] <= 1000`
- `-1000 <= target <= 1000`
- All values of `nums` are unique.
- `nums` is an ascending array that is possibly rotated.

Recommended Time & Space Complexity:

You should aim for a solution with `O(log n)` time and `O(1)` space, where `n` is the size of the input array.



## Time Based Key-Value Store (medium)

Design a time-based key-value data structure that can store multiple values for the same key at different time stamps and retrieve the key's value at a certain timestamp.

Implement the `TimeMap` class:

- `TimeMap()` Initializes the object of the data structure.
- `void set(String key, String value, int timestamp)` Stores the key `key` with the value `value` at the given time `timestamp`.
- `String get(String key, int timestamp)` Returns a value such that `set` was called previously, with `timestamp_prev <= timestamp`. If there are multiple such values, it returns the value associated with the largest `timestamp_prev`. If there are no values, it returns `""`.

Example 1:

```
Input:
["TimeMap", "set", ["alice", "happy", 1], "get", ["alice", 1], "get", ["alice", 2], "set", ["alice", "sad", 3], "get", ["alice", 3]]

Output:
[null, null, "happy", "happy", null, "sad"]

Explanation:
TimeMap timeMap = new TimeMap();
timeMap.set("alice", "happy", 1);  // store the key "alice" and value "happy" along with timestamp = 1.
timeMap.get("alice", 1);           // return "happy"
timeMap.get("alice", 2);           // return "happy", there is no value stored for timestamp 2, thus we return the value at timestamp 1.
timeMap.set("alice", "sad", 3);    // store the key "alice" and value "sad" along with timestamp = 3.
timeMap.get("alice", 3);           // return "sad"
```

Constraints:

- `1 <= key.length, value.length <= 100`
- `key` and `value` only include lowercase English letters and digits.
- `0 <= timestamp <= 10^7`
- All the timestamps of `set` are strictly increasing.
- At most `2 * 10^5` calls will be made to `set` and `get`.

Recommended Time & Space Complexity:

You should aim for a solution with `O(1)` time for `set()`, `O(logn)` time for `get()`, and `O(m * n)` space, where `n` is the total number of values associated with a key, and `m` is the total number of keys.
