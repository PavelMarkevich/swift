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
 ## Strings
 */

/*:
 ### Challenge 1
 Write a function that takes a string and prints out the count of each character in the string.
 
 For bonus points, print them ordered by the count of each character.
 */

// your code here


/*:
 ### Challenge 2
 Write a function that tells you how many words there are in a string. Do it without splitting the string.
 
 Hint: try iterating through the string yourself.
 */

// your code here

/*:
 ### Challenge 3
Write a function that takes a string which looks like "Galloway, Matt" and returns one which looks like "Matt Galloway", i.e., the string goes from `"<LAST_NAME>, <FIRST_NAME>"` to `"<FIRST_NAME> <LAST_NAME>"`.
 */

// your code here

/*:
 ### Challenge 4

 A method exists on a string named `components(separatedBy:)` that will split the string into chunks, which are delimited by the given string, and return an array containing the results.
 
 Your challenge is to implement this yourself.
 
 Hint: There exists a view on `String` named `indices` that lets you iterate through all the indices (of type `String.Index`) in the string. You will need to use this.
 */

// your code here


/*:
 ### Challenge 5
 Write a function which takes a string and returns a version of it with each individual word reversed.
 
 For example, if the string is “My dog is called Rover” then the resulting string would be "yM god si dellac revoR".
 
 Try to do it by iterating through the `indices` of the string until you find a space, and then reversing what was before it. Build up the result string by continually doing that as you iterate through the string.
 
 Hint: You’ll need to do a similar thing as you did for Challenge 4 but reverse the word each time. Try to explain to yourself, or the closest unsuspecting family member, why this is better in terms of memory usage than using the function you created in the previous challenge.
 */

// your code here
