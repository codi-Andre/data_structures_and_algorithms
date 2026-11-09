# Two pointers problems

## Valid Palindrome (easy)

Given a string `s`, return `true` if it is a palindrome, otherwise return `false`.

A palindrome is a string that reads the same forward and backward. It is also case-insensitive and ignores all non-alphanumeric characters.

> Note: Alphanumeric characters consist of letters `(A-Z, a-z)` and numbers `(0-9)`.

Example 1:

```
Input: s = "Was it a car or a cat I saw?"

Output: true
```

Explanation: After considering only alphanumerical characters we have "wasitacaroracatisaw", which is a palindrome.

Example 2:

```
Input: s = "tab a cat"

Output: false
```

Explanation: "tabacat" is not a palindrome.

Constraints:

- `1 <= s.length <= 1000`
- `s` is made up of only printable ASCII characters.

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(1)` space, where `n` is the length of the input string.



## Two Integer Sum II (medium)

Given an array of integers `numbers` that is sorted in non-decreasing order.

Return the indices (1-indexed) of two numbers, `[index1, index2]`, such that they add up to a given target number `target` and `index1 < index2`. Note that `index1` and `index2` cannot be equal, therefore you may not use the same element twice.

There will always be exactly one valid solution.

Your solution must use O(1) additional space.

Example 1:

```
Input: numbers = [1,2,3,4], target = 3

Output: [1,2]
```

Explanation:
The sum of 1 and 2 is 3. Since we are assuming a 1-indexed array, `index1 = 1`, `index2 = 2`. We return `[1, 2]`.

Constraints:

- `2 <= numbers.length <= 30000`
- `-1000 <= numbers[i] <= 1000`
- `-1000 <= target <= 1000`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(1)` space, where `n` is the size of the input array.



## 3Sum (medium)

Given an integer array `nums`, return all the triplets `[nums[i], nums[j], nums[k]]` where `nums[i] + nums[j] + nums[k] == 0`, and the indices `i`, `j` and `k` are all distinct.

The output should not contain any duplicate triplets. You may return the output and the triplets in any order.

Example 1:

```
Input: nums = [-1,0,1,2,-1,-4]

Output: [[-1,-1,2],[-1,0,1]]
```

Explanation:

`nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.`
`nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.`
`nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.`
The distinct triplets are `[-1,0,1]` and `[-1,-1,2]`.

Example 2:

```
Input: nums = [0,1,1]

Output: []
```

Explanation: The only possible triplet does not sum up to 0.

Example 3:

```
Input: nums = [0,0,0]

Output: [[0,0,0]]
```

Explanation: The only possible triplet sums up to 0.

Constraints:

- `3 <= nums.length <= 3000`
- `-10^5 <= nums[i] <= 10^5`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n^2)` time and `O(1)` auxiliary space, plus the space used by the sorting algorithm, where `n` is the size of the input array. This excludes the space used for the output list.



## Container With Most Water (medium)

You are given an integer array `heights` where `heights[i]` represents the height of the `i`th bar.

You may choose any two bars to form a container. Return the maximum amount of water a container can store.


Example 1:

```
 8 |
 7 |      🟩              ⬛
 6 |      🟩🟦🟦🟦🟦🟦🟦🟦⬛🟦🟦🟦🟩
 5 |      🟩🟦🟦🟦⬛🟦🟦🟦⬛🟦🟦🟦🟩
 4 |      🟩🟦🟦🟦⬛🟦⬛🟦⬛🟦🟦🟦🟩
 3 |      🟩🟦🟦🟦⬛🟦⬛🟦⬛🟦⬛🟦🟩
 2 |      🟩🟦⬛🟦⬛🟦⬛🟦⬛🟦⬛🟦🟩
 1 |  ⬛  🟩🟦⬛🟦⬛🟦⬛🟦⬛🟦⬛🟦🟩
 0 |_________________________________

Input: height = [1,7,2,5,4,7,3,6]

Output: 36
```

Explanation: The bars at indices `1` and `7` have heights `7` and `6`. The container has width `7 - 1 = 6` and height `min(7, 6) = 6`, so it can store `6 * 6 = 36` units of water. This is the maximum possible area.


Example 2:

```
Input: height = [2,2,2]

Output: 4
```

Constraints:

- `2 <= height.length <= 100,000`
- `0 <= height[i] <= 10,000`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(1)` space, where `n` is the size of the input array.
