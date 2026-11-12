# Data structures, algorithms and their big O with Odin

**The goal** of this repository is to learn and practice data structures and algorithms, as well as their Big O notation complexity, using the [Odin programming language](https://odin-lang.org).

The **problems** are organized in a logical way to facilitate understanding, and this was done by **Navi** in his [NeetCode site](https://neetcode.io), I used his structure in this project to help me learn Odin too.

## Project structure

These problems are in the `problems.md` files separated by their respective data structure or algorithm.

```
data_structures_and_algorithms/
│
├── src/
│   ├── main.odin
│   │
│   ├── arrays_and_hashing/
│   │   ├── contains_duplicate.odin
│   │   ├── encode_and_decode_strings.odin
│   │   ├── group_anagrams.odin
│   │   ├── longest_consecutive_sequence.odin
│   │   ├── products_of_array_except_self.odin
│   │   ├── top_k_frequent_elements.odin
│   │   ├── two_sum.odin
│   │   ├── valid_anagram.odin
│   │   ├── valid_sudoku.odin
│   │   └── problems.md
│   │
│   ├── two_pointers/
│   │   ├── container_with_most_water.odin
│   │   ├── three_sum.odin
│   │   ├── trapping_rain_water.odin
│   │   ├── two_sum_2.odin
│   │   ├── valid_palindrome.odin
│   │   └── problems.md
│   │
│   ├── sliding_window/
│   │   ├── best_time_to_buy_and_sell_stocks.odin
│   │   ├── longest_repeating_character_replacement.odin
│   │   ├── longest_substring_without_repeating_characters.odin
│   │   ├── minimum_window_substring.odin
│   │   ├── permutation_in_string.odin
│   │   └── problems.md
│   │
│   ├── stack/
│   │   ├── valid_parenthesis.odin
│   │   └── problems.md
│   │
│   ├── binary_search/
│   │   ├── binary_search.odin
│   │   └── problems.md
│   │
│   ├── linked_list/
│   │   ├── reverse_linked_list.odin
│   │   └── problems.md
│   │
│   └── trees/
│       ├── construct_binary_tree_from_preorder_and_inorder_traversal.odin
│       └── problems.md
│   
├── tests/
│   ├── test_arrays_and_hashing.odin
│   ├── test_binary_search.odin
│   ├── test_linked_list.odin
│   ├── test_sliding_window.odin
│   ├── test_stack.odin
│   ├── test_trees.odin
│   ├── test_two_pointers.odin
│   └── .gitignore
│
└── README.md
```

They can be tested by running the command `odin test . --all-packages` in the tests folder.

The problems and files have the same name, but procedures do not, ex.: `1. contains duplicate == contains_duplicate.odin`, but the procedure inside `contains_duplicate.odin` is called `has_duplicate`.

This was done because is better that the procedures names indicate their action.

There are many ways to solve these problems and the tests cases could not catch all the edge cases, but it is still a good way to practice.
