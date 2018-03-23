# Please answer the following five questions. This exercise should take 30-45 minutes.




# QUESTION #0: Agreement not to use external help

# As you complete the test, do not use a search engine, open a REPL, write code
# in your own IDE/editor, or otherwise use any tools other than CoderPad.

# Do you agree to this? Type your initials below.

# ---

# ANSWER #0: no

# Initials:
# MCD


# ================================================================================


# QUESTION #1: Array with odd numbers

# In the language of your choice, implement a function named
# `get_odd_numbers`, which takes as input an array of integers and returns a
# new array of only the odd numbers, where the order of the elements is
# otherwise unchanged.

# For instance, `get_odd_numbers([1,2,3,4,5,6,7])` should return `[1,3,5,7]`.


# ---

# ANSWER #1:

# Language:
# ruby

# Implementation:
# def get_odd_numbers(ary)
#   ary.select { |e|
# end


# ================================================================================


# QUESTION #2: Binary tree

# Let's say we have a class called Node, which represents a node in a binary
# tree. Instances of Node have two instance variables: `left` and `right`.
# They represent the node's children, and each may refer either to another
# instance of Node or be null.

# In the language of your choice, implement a method on the Node class named
# `count_descendants`, which will return the total number of nodes in the
# subtree of the node it's called on.

# For instance, if we have this binary tree,

#              n1
#             /  \
#           n2    n3
#          /     /  \
#        n4    n5    n6
#       /     /
#     n7    n8

# then calling `n3.count_descendants()` should return 3. Calling
# `n7.count_descendants()` should return 0.

# ---

# ANSWER #2:

# Language:
# <fill this in>

# Implementation:
# <fill this in>


# ================================================================================


# QUESTION #3: JavaScript counter

# Implement a JavaScript function named `delayedCounter`. When the function is
# invoked, one second later the string "1" is logged to the console, then one
# second after that the string "2" is logged to the console, and so on,
# indefinitely.

# ---

# ANSWER #3:

# Implementation:
# <fill this in>


# ================================================================================


# QUESTION #4: Database query

# Assume there are two database tables, `users` and `groups`, having the
# following schemas:

# mysql> describe users;
# +----------------------------+---------------+------+
# | Field                      | Type          | Null |
# +----------------------------+---------------+------+
# | id                         | int(11)       | NO   |
# | login_name                 | varchar(100)  | NO   |
# | email                      | varchar(100)  | NO   |
# | group_id                   | int(11)       | YES  |
# +----------------------------+---------------+------+

# mysql> describe groups;
# +---------------------------------+--------------+------+
# | Field                           | Type         | Null |
# +---------------------------------+--------------+------+
# | id                              | int(11)      | NO   |
# | name                            | varchar(255) | YES  |
# +---------------------------------+--------------+------+



# A user belongs to a group if the value of its corresponding `group_id` field
# is the same as the `id` the group record.

# Write a database query to select all users who belong to a group whose name
# isn't null.

# ---

# ANSWER #4:

# Query:
# <fill this in>


# ================================================================================


# QUESTION #5: HTTP

# Question #5a:
#   Explain how cookies work, at the HTTP level. Let's say a user clicks a link
#   in their browser, and the web server sends a cookie back. How does this
#   actually work?


# Question #5b:
#   When a web server is constructing a response to send to the client, how
#   should it indicate that the contents be interpreted as JSON?

# ---

# ANSWER #5a:
# <fill this in>

# ANSWER #5b:
# <fill this in>


# ================================================================================


# Thank you for participating!