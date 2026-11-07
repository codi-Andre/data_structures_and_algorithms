# Arrays and hashing problems

## Contains Duplicate (easy)

Given an integer array `nums`, return `true` if any value appears more than once in the array, otherwise return `false`.

Example 1:

```
Input: nums = [1, 2, 3, 3]

Output: true
```

Example 2:

```
Input: nums = [1, 2, 3, 4]

Output: false
```

Constraints:

- `0 <= nums.length <= 10^5`
- `-10^9 <= nums[i] <= 10^9`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(n)` space, where `n` is the size of the input array.

## Valid Anagram (easy)

Given two strings `s` and `t`, return `true` if the two strings are anagrams of each other, otherwise `return` false.

Two strings are anagrams if they contain the same characters, with each character appearing the same number of times, regardless of order.


Example 1:

```
Input: s = "racecar", t = "carrace"

Output: true
```

Example 2:

```
Input: s = "jar", t = "jam"

Output: false
```

Example 3:

```
Input: s = "x", t = "x"

Output: true
```

Constraints:

- `1 <= s.length, t.length <= 5 * 10^4`
- `s` and `t` consist of lowercase English letters.

Recommended Time & Space Complexity:

You should aim for a solution with `O(n + m)` time and `O(1)` space, where `n` is the length of the string `s` and `m` is the length of the string `t`.


## Two Sum (easy)

Given an array of integers `nums` and an integer `target`, return the indices `i` and `j` such that `nums[i] + nums[j] == target` and `i != j`.

You may assume that every input has exactly one pair of indices `i` and `j` that satisfy the condition.

Return the answer with the smaller index first.

Example 1:

```
Input: nums = [3,4,5,6], target = 7

Output: [0,1]
```

Explanation: `nums[0] + nums[1] == 7`, so we return `[0, 1]`.

Example 2:

```
Input: nums = [4,5,6], target = 10

Output: [0,2]
```

Example 3:

```
Input: nums = [5,5], target = 10

Output: [0,1]
```

Constraints:

- `2 <= nums.length <= 1000`
- `-10,000,000 <= nums[i] <= 10,000,000`
- `-10,000,000 <= target <= 10,000,000`
- Only one valid answer exists.

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(n)` space, where n is the size of the input array.

## Group Anagrams (Medium)

Given an array of strings `strs`, group all anagrams together into sublists. You may return the output in any order.

An anagram is a string that contains the exact same characters as another string, but the order of the characters can be different.

Example 1:

```
Input: strs = ["act","pots","tops","cat","stop","hat"]

Output: [["hat"],["act", "cat"],["stop", "pots", "tops"]]
```

Example 2:

```
Input: strs = ["x"]

Output: [["x"]]
```

Example 3:

```
Input: strs = [""]

Output: [[""]]
```

Constraints:

- `1 <= strs.length <= 10000`.
- 0 <= strs[i].length <= 100`
- `strs[i]` is made up of lowercase English letters.

Recommended Time & Space Complexity:

You should aim for a solution with `O(m * n)` time and `O(m)` space, where `m` is the number of strings and `n` is the length of the longest string.
