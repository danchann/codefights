# Code Fights Challenges
I use this repository for solutions to the programming challenges that I complete from https://codefights.com.  I complete these challenges regularly to ensure I am consistently advancing both my algorithmic and programmatic skills.

## Challenge Descriptions
CodeFights gives you a task description, which you have to program a solution of maximum efficiency for.  The description for each of the tasks in this repo are below...


<details>
    <summary>almostIncreasingSequence [JS]</summary>
    <br>

[Codefights Link](https://app.codesignal.com/arcade/intro/level-2/2mxbGwLzvkTCKAJMG)<br>
Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

Example

For sequence = [1, 3, 2, 1], the output should be
almostIncreasingSequence(sequence) = false;

There is no one element in this array that can be removed in order to get a strictly increasing sequence.

For sequence = [1, 3, 2], the output should be
almostIncreasingSequence(sequence) = true.

You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

Input/Output

[execution time limit] 4 seconds (js)

[input] array.integer sequence

Guaranteed constraints:
2 ≤ sequence.length ≤ 105,
-105 ≤ sequence[i] ≤ 105.

[output] boolean

Return true if it is possible to remove one element from the array in order to get a strictly increasing sequence, otherwise return false.
</details>





<details>
    <summary>matrixElementsSum [JS]</summary>
    <br>
After they became famous, the CodeBots all decided to move to a new building and live together. The building is represented by a rectangular matrix of rooms. Each cell in the matrix contains an integer that represents the price of the room. Some rooms are free (their cost is 0), but that's probably because they are haunted, so all the bots are afraid of them. That is why any room that is free or is located anywhere below a free room in the same column is not considered suitable for the bots to live in.

Help the bots calculate the total price of all the rooms that are suitable for them.

Example

For matrix = [[0, 1, 1, 2], [0, 5, 0, 0], [2, 0, 3, 3]] the output should be matrixElementsSum(matrix) = 9.

Here's the rooms matrix with unsuitable rooms marked with 'x':

[[x, 1, 1, 2], [x, 5, x, x], [x, x, x, x]] Thus, the answer is 1 + 5 + 1 + 2 = 9.

For matrix = [[1, 1, 1, 0], [0, 5, 0, 1], [2, 1, 3, 10]] the output should be matrixElementsSum(matrix) = 9.

Here's the rooms matrix with unsuitable rooms marked with 'x':

[[1, 1, 1, x], [x, 5, x, x], [x, 1, x, x]] Note that the free room in the first row make the full column unsuitable for bots.

Thus, the answer is 1 + 1 + 1 + 5 + 1 = 9.

Input/Output

[execution time limit] 4 seconds (js)

[input] array.array.integer matrix

A 2-dimensional array of integers representing a rectangular matrix of the building.

Guaranteed constraints: 1 ≤ matrix.length ≤ 5, 1 ≤ matrix[i].length ≤ 5, 0 ≤ matrix[i][j] ≤ 10.

[output] integer

The total price of all the rooms that are suitable for the CodeBots to live in.
</details>





<details>
    <summary>commonCharacterCount [JS]</summary>
    <br>
    Given two strings, find the number of common characters between them.

Example

For s1 = "aabcc" and s2 = "adcaa", the output should be
commonCharacterCount(s1, s2) = 3.

Strings have 3 common characters - 2 "a"s and 1 "c".

Input/Output

[execution time limit] 4 seconds (js)

[input] string s1

A string consisting of lowercase latin letters a-z.

Guaranteed constraints:
1 ≤ s1.length ≤ 15.

[input] string s2

A string consisting of lowercase latin letters a-z.

Guaranteed constraints:
1 ≤ s2.length ≤ 15.

[output] integer
</details>




<details>
    <summary>isLucky [JS]</summary>
    <br>
    Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.

Given a ticket number n, determine if it's lucky or not.

Example

For n = 1230, the output should be
isLucky(n) = true;
For n = 239017, the output should be
isLucky(n) = false.
Input/Output

[execution time limit] 4 seconds (js)

[input] integer n

A ticket number represented as a positive integer with an even number of digits.

Guaranteed constraints:
10 ≤ n < 106.

[output] boolean

true if n is a lucky ticket number, false otherwise.
</details>




<details>
    <summary>sortByHeight [JS]</summary>
    <br>
    Some people are standing in a row in a park. There are trees between them which cannot be moved. Your task is to rearrange the people by their heights in a non-descending order without moving the trees.

Example

For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be
sortByHeight(a) = [-1, 150, 160, 170, -1, -1, 180, 190].

Input/Output

[execution time limit] 4 seconds (js)

[input] array.integer a

If a[i] = -1, then the ith position is occupied by a tree. Otherwise a[i] is the height of a person standing in the ith position.

Guaranteed constraints:
5 ≤ a.length ≤ 15,
-1 ≤ a[i] ≤ 200.

[output] array.integer

Sorted array a with all the trees untouched.
</details>




<details><summary>reverseParenthesis [JS]</summary><br>
    You have a string s that consists of English letters, punctuation marks, whitespace characters, and brackets. It is guaranteed that the parentheses in s form a regular bracket sequence.

Your task is to reverse the strings contained in each pair of matching parentheses, starting from the innermost pair. The results string should not contain any parentheses.

Example

For string s = "a(bc)de", the output should be
reverseParentheses(s) = "acbde".

Input/Output

[execution time limit] 4 seconds (js)

[input] string s

A string consisting of English letters, punctuation marks, whitespace characters and brackets. It is guaranteed that parentheses form a regular bracket sequence.

Constraints:
5 ≤ s.length ≤ 55.

[output] string
</details>




## Interview Practice Challenges

<details><summary>Array</summary><br>

* [First Duplicate](https://codefights.com/interview-practice/task/pMvymcahZ8dY4g75q)
* [First Not Repeating Character](https://codefights.com/interview-practice/task/uX5iLwhc6L5ckSyNC)
* [Rotate Image](https://codefights.com/interview-practice/task/5A8jwLGcEpTPyyjTB)
* [Sudoku2](https://codefights.com/interview-practice/task/SKZ45AF99NpbnvgTn)
* [Is Crypt Solution](https://codefights.com/interview-practice/task/yM4uWYeQTHzYewW9H)
</details>

<details><summary>Linked List</summary><br>

* [Remove K from Linked List](https://codefights.com/interview-practice/task/gX7NXPBrYThXZuanm)
* [Is List Panlindrome?](https://codefights.com/interview-practice/task/HmNvEkfFShPhREMn4)
* [Add Two Huge Numbers](https://codefights.com/interview-practice/task/RvDFbsNC3Xn7pnQfH)
* [Merge Two Linked Lists](https://codefights.com/interview-practice/task/6rE3maCQwrZS3Mm2H)
* [Reverse Nodes in K Groups](https://codefights.com/interview-practice/task/XP2Wn9pwZW6hvqH67)
* [Rearrange Last N](https://codefights.com/interview-practice/task/5vcioHMkhGqkaQQYt)
</details>

<details><summary>Hash Tables</summary><br>

* [Grouping Dishes](https://codefights.com/interview-practice/task/xrFgR63cw7Nch4vXo)
* [Are Following Patterns](https://codefights.com/interview-practice/task/3PcnSKuRkqzp8F6BN)
* [Contains Closest Numbers](https://codefights.com/interview-practice/task/njfXsvjRthFKmMwLC)
* [Possible Sums](https://codefights.com/interview-practice/task/rMe9ypPJkXgk3MHhZ)
</details>

<details><summary>Trees</summary><br>

* [Has Path with Given Sum](https://codefights.com/interview-practice/task/TG4tEMPnAc3PnzRCs)
* [Is Tree Symmetric](https://codefights.com/interview-practice/task/tXN6wQsTknDT6bNrf)
* [Find Profession](https://codefights.com/interview-practice/task/FwAR7koSB3uYYsqDp)
* [K Largest in BST](https://codefights.com/interview-practice/task/jAKLMWLu8ynBhYsv6)
* [Is Subtree](https://codefights.com/interview-practice/task/mDpAJnDQkJqaYYsCg)
* [Delete from BST](https://codefights.com/interview-practice/task/oZXs4td52fsdWC9kR)
* [Restore Binary Tree](https://codefights.com/interview-practice/task/AaWaYxi8gjtbqgp2M)
</details>

<details><summary>Depth First Search</summary><br>

* [Longest Path](https://codefights.com/interview-practice/task/iXJRYae6TBqc4ymFg)
* [Traverse Tree](https://codefights.com/interview-practice/task/PhNPP45hZGNwpPchi)
* [Largest Value in Tree Row](https://codefights.com/interview-practice/task/m9vC4ALaAeudkwRTF)
* [Digit Tree Sum](https://codefights.com/interview-practice/task/2oxNWXTS8eWBzvnRB)
* [Graph Distance](https://codefights.com/interview-practice/task/QTirmApTj7sWaidLk)
</details>
