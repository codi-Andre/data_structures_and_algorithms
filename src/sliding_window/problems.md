# Sliding window problems

## Best Time to Buy and Sell Stock (easy)

You are given an integer array `prices` where `prices[i]` is the price of NeetCoin on the `ith` day.

You may choose a single day to buy one NeetCoin and choose a different day in the future to sell it.

Return the maximum profit you can achieve. You may choose to not make any transactions, in which case the profit would be `0`.

Example 1:

```
Input: prices = [10,1,5,6,7,1]

Output: 6
```

Explanation: Buy `prices[1]` and sell `prices[4]`, `profit = 7 - 1 = 6`.

Example 2:

```
Input: prices = [10,8,7,5,2]

Output: 0
```

Explanation: No profitable transactions can be made, thus the max profit is 0.

Constraints:

- `1 <= prices.length <= 100`
- `0 <= prices[i] <= 100`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(1)` space, where `n` is the size of the input array.



## Longest Substring Without Repeating Characters (medium)

Given a string `s`, find the length of the longest substring without duplicate characters.

A substring is a contiguous sequence of characters within a string.


Example 1:

```
Input: s = "zxyzxyz"

Output: 3
```

Explanation: The string "xyz" is the longest without duplicate characters.


Example 2:

```
Input: s = "xxxx"

Output: 1
```

Constraints:

- `0 <= s.length <= 50,000`
- `s` may consist of printable ASCII characters.

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(m)` space, where `n` is the length of the string and `m` is the number of unique characters in the string.



## Longest Repeating Character Replacement (medium)

You are given a string `s` consisting of only uppercase english characters and an integer `k`. You can choose up to `k` characters of the string and replace them with any other uppercase English character.

After performing at most `k` replacements, return the length of the longest substring which contains only one distinct character.

Example 1:

```
Input: s = "XYYX", k = 2

Output: 4
```

Explanation: Either replace the 'X's with 'Y's, or replace the 'Y's with 'X's.

Example 2:

```
Input: s = "AAABABB", k = 1

Output: 5
```

Constraints:

- `1 <= s.length <= 100,000`
- `0 <= k <= s.length`
- `s` consists of only uppercase english characters.

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(m)` space, where `n` is the length of the given string and `m` is the number of unique characters in the string.



## Permutation in String (medium)

You are given two strings `s1` and `s2`.

Return `true` if `s2` contains a permutation of `s1`, or `false` otherwise. That means if a permutation of `s1` exists as a substring of `s2` , then return `true`.

Both strings only contain lowercase letters.

Example 1:

```
Input: s1 = "abc", s2 = "lecabee"

Output: true
```

Explanation: The substring "cab" is a permutation of "abc" and is present in "lecabee".

Example 2:

```
Input: s1 = "abc", s2 = "lecaabee"

Output: false
```

Constraints:

- `1 <= s1.length, s2.length <= 10000`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(1)` space, where `n` is the maximum of the lengths of the two strings.
