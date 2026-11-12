# Stack problems

## Valid Parentheses (easy)

You are given a string `s` consisting of the following characters: `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`.

The input string `s` is valid if and only if:

1. Every open bracket is closed by the same type of close bracket.
2. Open brackets are closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.

Return `true` if s is a valid string, and `false` otherwise.

Example 1:

```
Input: s = "[]"

Output: true
```

Example 2:

```
Input: s = "([{}])"

Output: true
```

Example 3:

```
Input: s = "[(])"

Output: false
```

Explanation: The brackets are not closed in the correct order.

Constraints:

- `1 <= s.length <= 1000`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(n)` space, where `n` is the length of the given string.



## Min Stack (medium)

Design a stack class that supports the `push`, `pop`, `top`, and `getMin` operations.

- `MinStack()` initializes the stack object.
- `void push(int val)` pushes the element `val` onto the stack.
- `void pop()` removes the element on the top of the stack.
- `int top()` gets the top element of the stack.
- `int getMin()` retrieves the minimum element in the stack.

Each function should run in O(1) time.

Example 1:

```
Input: ["MinStack", "push", 1, "push", 2, "push", 0, "getMin", "pop", "top", "getMin"]

Output: [null,null,null,null,0,null,2,1]

Explanation:
MinStack minStack = new MinStack();
minStack.push(1);
minStack.push(2);
minStack.push(0);
minStack.getMin(); // return 0
minStack.pop();
minStack.top();    // return 2
minStack.getMin(); // return 1
```

Constraints:

- `-2^31 <= val <= 2^31 - 1`.
- `pop`, `top` and `getMin` will always be called on non-empty stacks.
- At most 3∗10⁴ calls will be made to `push`, `pop`, `top`, and `getMin`.

Recommended Time & Space Complexity:

You should aim for a solution with `O(1)` time for each function call and `O(n)` space, where `n` is the maximum number of elements present in the stack.
