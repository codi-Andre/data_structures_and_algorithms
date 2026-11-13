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


## Evaluate Reverse Polish Notation (medium)

You are given an array of strings `tokens` that represents a valid arithmetic expression in Reverse Polish Notation.

Return the integer that represents the evaluation of the expression.

- The operands may be integers or the results of other operations.
- The operators include `'+'`, `'-'`, `'*'`, and `'/'`.
- Assume that division between integers always truncates toward zero.

Example 1:

```
Input: tokens = ["1","2","+","3","*","4","-"]

Output: 5

Explanation: ((1 + 2) * 3) - 4 = 5
```

Constraints:

- `1 <= tokens.length <= 10000`.
- `tokens[i]` is `"+"`, `"-"`, `"*"`, or `"/"`, or a string representing an integer in the range `[-200, 200]`.

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(n)` space, where `n` is the size of the input array.

## Daily Temperatures (medium)

You are given an array of integers `temperatures` where `temperatures[i]` represents the daily temperatures on the `ith` day.

Return an array `result` where `result[i]` is the number of days after the `ith` day before a warmer temperature appears on a future day. If there is no day in the future where a warmer temperature will appear for the `ith` day, set `result[i]` to `0` instead.

Example 1:

```
Input: temperatures = [30,38,30,36,35,40,28]

Output: [1,4,1,2,1,0,0]
```

Example 2:

```
Input: temperatures = [22,21,20]

Output: [0,0,0]
```

Constraints:

- `1 <= temperatures.length <= 100,000`.
- `1 <= temperatures[i] <= 100`

Recommended Time & Space Complexity:

You should aim for a solution as good or better than `O(n)` time and `O(n)` space, where `n` is the size of the input array.



## Car Fleet (medium)

There are `n` cars traveling to the same destination on a one-lane highway.

You are given two arrays of integers `position` and `speed`, both of length `n`.

- `position[i]` is the position of the `ith car` (in miles)
- `speed[i]` is the speed of the `ith car` (in miles per hour)

The destination is at position `target` miles.

A car can not pass another car ahead of it. It can only catch up to another car and then drive at the same speed as the car ahead of it.

A car fleet is a non-empty set of cars driving at the same position and same speed. A single car is also considered a car fleet.

If a car catches up to a car fleet the moment the fleet reaches the destination, then the car is considered to be part of the fleet.

Return the number of different car fleets that will arrive at the destination.

Example 1:

```
Input: target = 10, position = [1,4], speed = [3,2]

Output: 1
```

Explanation: The cars starting at 1 (speed 3) and 4 (speed 2) become a fleet, meeting each other at 10, the destination.

Example 2:

```
Input: target = 10, position = [4,1,0,7], speed = [2,2,1,1]

Output: 3
```

Explanation: The cars starting at 4 and 7 become a fleet at position 10. The cars starting at 1 and 0 never catch up to the car ahead of them. Thus, there are 3 car fleets that will arrive at the destination.

Constraints:

- `n == position.length == speed.length`.
- `1 <= n <= 100,000`
- `0 < target <= 1,000,000`
- `1 <= speed[i] <= 1,000,000`
- `0 <= position[i] < target`
- All the values of `position` are unique.

Recommended Time & Space Complexity:

You should aim for a solution with `O(n log n)` time and `O(n)` space, where `n` is the size of the input array.



## Largest Rectangle In Histogram (hard)

You are given an array of integers `heights` where `heights[i]` represents the height of a bar. The width of each bar is `1`.

Return the area of the largest rectangle that can be formed among the bars.

> Note: This chart is known as a histogram.


Example 1:

```
┌───┐   ┌───┐                           
│ 7 │   │ 7 │                          
├───┤   ├───┤                         
│   │   │   │             
├───┤   ├───┤             
│   │   │   │             
├───┤   ├───┤       ┌───┐ 
│   │   │   │       │ 4 │ 
├───┤   ├───┤       ├───┤ 
│   │   │   │       │   │ 
├───┤   ├───┼───┬───├───┤ 
│   │   │   │ 2 │ 2 │   │ 
├───┼───┼───┼───┼───┼───┤ 
│   │ 1 │   │   │   │   │ 
└───┴───┴───┴───┴───┴───┘
 

Input: heights = [7,1,7,2,2,4]

Output: 8
```

Example 2:

```
        ┌───┐                           
        │ 7 │                          
        ├───┤                         
        │   │             
        ├───┤             
        │   │             
        ├───┤
        │   │
    ┌───├───┤
    │ 3 │   │
    ├───┼───┤
    │   │   │
┌───┼───┼───┤
│ 1 │   │   │
└───┴───┴───┘

Input: heights = [1,3,7]

Output: 7
```

Constraints:

- `1 <= heights.length <= 100,000`.
- `0 <= heights[i] <= 10,000`

Recommended Time & Space Complexity:

You should aim for a solution with `O(n)` time and `O(n)` space, where `n` is the size of the input array.
