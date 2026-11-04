package test_stack

import "core:testing"
import "../../src/stack"

@(test)
test_valid_parenthesis :: proc(t: ^testing.T) {
	testing.expect_value(t, stack.is_valid_parenthesis("[]"), true)
	testing.expect_value(t, stack.is_valid_parenthesis("([{}])"), true)
	testing.expect_value(t, stack.is_valid_parenthesis("[(])"), false)
}
