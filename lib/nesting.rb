def solution(s)
    return 0 if s.count("(") != s.count(")") || s[0] == ")" || s[-1] == "("
    return 1
end

solution('())(()')

# Code: 06:27:33 UTC, rb, final, score:  87.00

# Analysis summary
# The following issues have been detected: wrong answers.

# For example, for the input '())(()' the solution returned a wrong answer (got 1 expected 0).

# Analysis
# Detected time complexity:
# O(N)
# expand allExample tests
# ▶ example1
# example test ✔OK
# ▶ example2
# example test2 ✔OK
# expand allCorrectness tests
# ▶ negative_match
# invalid structure, but the number of parentheses matches ✘WRONG ANSWER
# got 1 expected 0
# 1. 0.104 s OK
# 2. 0.100 s WRONG ANSWER,  got 1 expected 0
# ▶ empty
# empty string ✔OK
# ▶ simple_grouped
# simple grouped positive and negative test, length=22 ✔OK
# ▶ small_random ✔OK
# expand allPerformance tests
# ▶ large1
# simple large positive and negative test, 10K or 10K+1 ('s followed by 10K )'s ✔OK
# ▶ large_full_ternary_tree
# tree of the form T=(TTT) and depth 11, length=177K+ ✔OK
# ▶ multiple_full_binary_trees
# sequence of full trees of the form T=(TT), depths [1..10..1], with/without unmatched ')' at the end, length=49K+ ✔OK
# ▶ broad_tree_with_deep_paths
# string of the form (TTT...T) of 300 T's, each T being '(((...)))' nested 200-fold, length=1 million ✔OK
