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



## Linked List Cycle Detection (easy)

Given the beginning of a linked list `head`, return `true` if there is a cycle in the linked list. Otherwise, return `false`.

There is a cycle in a linked list if at least one node in the list can be visited again by following the `next` pointer.

Internally, `index` determines the index of the beginning of the cycle, if it exists. The tail node of the list will set it's `next` pointer to the `index-th` node. If `index = -1`, then the tail node points to `null` and no cycle exists.

> Note: `index` is not given to you as a parameter.

Example 1:


```
Input: head = [1,2,3,4], index = 1

Output: true
```

Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).

Example 2:


```
Input: head = [1,2], index = -1

Output: false
```

Constraints:

- `0 <= Length of the list <= 1000.`
- `-1000 <= Node.val <= 1000`
- `index` is `-1` or a valid index in the linked list.

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(1)` space, where `n` is the length of the given list.
