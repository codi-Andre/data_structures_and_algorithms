package stack

import "core:strconv"

// Time complexity: O(n) | Space complexity: O(n)

evaluate_reverse_polish_notation :: proc(tokens: []string) -> int {
	stack := make([dynamic]int)
	defer delete(stack)

	for token in tokens {
		switch num1, num2: int; token {
		case "+":
			num2, num1 = pop(&stack), pop(&stack)
			append(&stack, num1 + num2)
		case "-":
			num2, num1 = pop(&stack), pop(&stack)
			append(&stack, num1 - num2)
		case "*":
			num2, num1 = pop(&stack), pop(&stack)
			append(&stack, num1 * num2)
		case "/":
			num2, num1 = pop(&stack), pop(&stack)
			append(&stack, num1 / num2)
		case:
			num, _ := strconv.parse_int(token, 10)
			append(&stack, num)
		}
	}
	return stack[len(stack) - 1]
}
