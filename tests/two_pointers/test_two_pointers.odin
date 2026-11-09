package test_two_pointes

import "core:log"
import "core:slice"
import "core:time"
import "core:testing"
import "../../src/two_pointers"

@(test)
test_valid_palindrome :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, two_pointers.is_palindrome("Was it a car or a cat I saw?"), true)
	testing.expect_value(t, two_pointers.is_palindrome("tab a cat"), false)
	testing.expect_value(t, two_pointers.is_palindrome(".,,"), true)
	testing.expect_value(t, two_pointers.is_palindrome("a,,"), true)
	testing.expect_value(t, two_pointers.is_palindrome(",,a"), true)
	testing.expect_value(t, two_pointers.is_palindrome("ab,,a"), true)
}

@(test)
test_two_sum_2 :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, two_pointers.two_sum_2({1,2,3,4}, 3), {1,2})
}

@(test)
test_three_sum :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	output1 := two_pointers.three_sum({-1,0,1,2,-1,-4})
	output2 := two_pointers.three_sum({0,1,1})
	output3 := two_pointers.three_sum({0,0,0})
	output4 := two_pointers.three_sum({-4,-2,-2,-2,0,1,2,2,2,3,3,4,4,6,6})
	defer {
		delete(output1)
		delete(output2)
		delete(output3)
		delete(output4)
	}

	testing.expect_value(t, slice.equal(output1[0][:], {-1,-1,2}), true)
	testing.expect_value(t, slice.equal(output1[1][:], {-1,0,1}), true)
	testing.expect_value(t, len(output2), 0)
	testing.expect_value(t, slice.equal(output3[0][:], {0,0,0}), true)
	testing.expect_value(t, len(output4), 6)
}

@(test)
test_container_with_most_water :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, two_pointers.container_with_most_water({1,7,2,5,4,7,3,6}), 36)
	testing.expect_value(t, two_pointers.container_with_most_water({2,2,2}), 4)
}
