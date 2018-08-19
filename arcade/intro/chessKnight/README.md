Given a position of a knight on the standard chessboard, find the number of different moves the knight can perform.

The knight can move to a square that is two squares horizontally and one square vertically, or two squares vertically and one square horizontally away from it. The complete move therefore looks like the letter L. Check out the image below to see all valid moves for a knight piece that is placed on one of the central squares.

[<img src="https://codefightsuserpics.s3.amazonaws.com/tasks/chessKnight/img/knight.jpg?_tm=1530791321381">](https://codefightsuserpics.s3.amazonaws.com/tasks/chessKnight/img/knight.jpg?_tm=1530791321381)

**Example**

For cell = "a1", the output should be
chessKnight(cell) = 2.

[<img src="https://codefightsuserpics.s3.amazonaws.com/tasks/chessKnight/img/ex_1.jpg?_tm=1530791321641">](https://codefightsuserpics.s3.amazonaws.com/tasks/chessKnight/img/ex_1.jpg?_tm=1530791321641)

For cell = "c2", the output should be
chessKnight(cell) = 6.

[<img src="https://codefightsuserpics.s3.amazonaws.com/tasks/chessKnight/img/ex_2.jpg?_tm=1530791321912">](https://codefightsuserpics.s3.amazonaws.com/tasks/chessKnight/img/ex_2.jpg?_tm=1530791321912)

**Input/Output**

[execution time limit] 4 seconds (js)

[input] string cell

String consisting of 2 letters - coordinates of the knight on an 8 × 8 chessboard in chess notation.

[output] integer

**[JavaScript (ES6)] Syntax Tips**

```javascript
// Prints help message to the console
// Returns a string
function helloWorld(name) {
    console.log("This prints to the console when you Run Tests");
    return "Hello, " + name;
}
```