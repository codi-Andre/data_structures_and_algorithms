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
