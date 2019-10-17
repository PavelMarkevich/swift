/**
 * Copyright (c) 2018 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation

/*:
 ## Basic Control Flow
 ### Challenge 1
 What’s wrong with the following code?
 
 ```
 let firstName = "Matt"
 
 if firstName == "Matt" {
   let lastName = "Galloway"
 } else if firstName == "Ray" {
   let lastName = "Wenderlich"
 }
 let fullName = firstName + " " + lastName
 ```
 */
// your answer is here
// A correct solution:
// your code is here
/*:
 ### Challenge 2
 In each of the following statements, what is the value of the Boolean `answer` constant?
 */

//let answer1 = true && true
// your answer is here

//let answer2 = false || false
// your answer is here

//let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
// your answer is here

//let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)
// your answer is here

/*:
 ### Challenge 3
 Suppose the squares on a chessboard are numbered left to right, top to bottom, with 0 being the top-left square and 63 being the bottom-right square. Rows are numbered top to bottom, 0 to 7. Columns are numbered left to right, 0 to 7. Given a current position on the chessboard, expressed as a row and column number, calculate the next position on the chessboard, again expressed as a row and column number. The ordering is determined by the numbering from 0 to 63. The position after 63 is again 0.
 */
let row = 2
let column = 4

var nextRow = row
var nextColumn = column + 1
// your code is here

print("The position after \(row), \(column)) is \(nextRow), \(nextColumn)")


/*: 
 ### Challenge 4
 Given the coefficients a, b and c, calculate the solutions to a quadratic equation with these coefficients. Take into account the different number of solutions (0, 1 or 2). If you need a math refresher, this Wikipedia article on the quadratic equation will help [https://en.wikipedia.org/wiki/Quadratic_formula](https://en.wikipedia.org/wiki/Quadratic_formula).
 */
// a*x^2 + b*x + c = 0
// x = ?

let a = 1.0
let b = -5.0
let c = 6.0

// your code is here
/*:
 ### Challenge 5
 Given a month (represented with a `String` in all lowercase) and the current year (represented with an `Int`), calculate the number of days in the month. Remember that because of leap years, "february" has 29 days when the year is a multiple of 4 but not a multiple of 100.  February also has 29 days when the year is a multiple of 400.
 */
// monthes: january, february, march, april, may, june, july, august, september, october, november, december
let month = "february"
let year = 2016

// your code is here
/*:
 ### Challenge 6
 Given a number, determine if this number is a power of 2. (Hint: you can use `log2(number)` to find the base 2 logarithm of `number`. `log2(number)` will return a whole number if `number` is a power of two. You can also solve the problem using a loop and no logarithm.)
 */
let number = 1024.0
/*:
 Solution using logarithms:
 */
// your code is here
/*:
 Solution without using logarithms:
 */
// your code is here
/*:
 ### Challenge 7
 Print a table of the first 10 powers of 2.
 */
// your code is here

/*:
 ### Challenge 8
 Given a number n, calculate the n-th Fibonacci number.  (Recall Fibonacci is 1, 1, 2, 3, 5, 8, 13, ... Start with 1 and 1 and add these values together to get the next value.  The next value is the sum of the previous two.  So the next value in this case is 8+13 = 21.)
 */
let goal = 10  // the value of n
var result = 0 // result

//your code is here

print("Fibonacci number \(goal) is \(result)")

/*:
 ### Challenge 9
 Given a number n, calculate the factorial of n.  (Example: 4 factorial is equal to 1 * 2 * 3 * 4.)
 */
let n = 5
var accumulator = 1

// your code is here

print("\(n)! is \(accumulator)")

/*:
 ### Challenge 10
 
 In the following for loop:
 
 ```
 var sum = 0
 for i in 0...5 {
 sum += i
 }
 ```
 What will be the value of `sum`, and how many iterations will happen?
 */

// sum = you answer here

/*:
 ### Challenge 11
 
 In the while loop below:
 ````
 var aLotOfAs = ""
 while aLotOfAs.count < 10 {
 aLotOfAs += "a"
 }
 ````
 How many instances of the character “a” will there be in `aLotOfAs`? Hint: `aLotOfAs.count` will tell you how many characters there are in the string `aLotOfAs`.
 */

// aLotOfAs contains <your answer is here>

/*:
 ### Challenge 12
 Consider the following switch statement:
 
 ```
 switch coordinates {
 case let (x, y, z) where x == y && y == z:
 print("x = y = z")
 case (_, _, 0):
 print("On the x/y plane")
 case (_, 0, _):
 print("On the x/z plane")
 case (0, _, _):
 print("On the y/z plane")
 default:
 print("Nothing special")
 }
 ```
 
 What will this code print when coordinates is each of the following?
 ```
 let coordinates = (1, 5, 0)
 let coordinates = (2, 2, 2)
 let coordinates = (3, 0, 1)
 let coordinates = (3, 2, 5)
 let coordinates = (0, 2, 4)
 ```
 */
let coordinates = (1, 5, 0)
// your answer is here

//let coordinates = (2, 2, 2)
// your answer is here

//let coordinates = (3, 0, 1)
// your answer is here

//let coordinates = (3, 2, 5)
// your answer is here

//let coordinates = (0, 2, 4)
// your answer is here

switch coordinates {
case let (x, y, z) where x == y && y == z:
    print("x = y = z")
case (_, _, 0):
    print("On the x/y plane")
case (_, 0, _):
    print("On the x/z plane")
case (0, _, _):
    print("On the y/z plane")
default:
    print("Nothing special")
}

/*:
 ### Challenge 13
 Declare a closed range and half-open range.
 */
// your code is here
/*:
 A closed range can never be empty. Why?
 */
// your answer is here

/*:
 ### Challenge 14
 Print a countdown from 10 to 0.  (Note: do not use the `reversed()` method, which will be introduced later.)
 */
// your code is here
/*:
 ### Challenge 15s
 
 Print 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.  (Note: do not use the `stride(from:to:by:)` function, which will be introduced later.)
 */
// your code is here
