# Linked List

## Reverse Linked List (easy)

Given the beginning of a singly linked list `head`, reverse the list, and return the new beginning of the list.

Example 1:

```
Input: head = [0,1,2,3]

Output: [3,2,1,0]
```

Example 2:

```
Input: head = []

Output: []
```

Constraints:

`0 <= The length of the list <= 1000.`
`-1000 <= Node.val <= 1000`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(1)` space, where `n` is the length of the given list.



## Merge Two Sorted Linked Lists (easy)

You are given the heads of two sorted linked lists `list1` and `list2`.

Merge the two lists into one sorted linked list and return the head of the new sorted linked list.

The new list should be made up of nodes from `list1` and `list2`.

Example 1:

```
Input: list1 = [1,2,4], list2 = [1,3,5]

Output: [1,1,2,3,4,5]
```

Example 2:

```
Input: list1 = [], list2 = [1,2]

Output: [1,2]
```

Example 3:

```
Input: list1 = [], list2 = []

Output: []
```

Constraints:

- `0 <= The length of the each list <= 100`.
- `-100 <= Node.val <= 100`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n + m)` time and `O(1)` space, where `n` is the length of `list1` and `m` is the length of `list2`.
