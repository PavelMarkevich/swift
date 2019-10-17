/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.
/*:
 ## Xcode 10 Note
 For certain versions of Xcode Playgrounds, you may need to run the entire file with the Execute Playground button below. The play button next to the line numbers may be incorrectly disabled.
 
 ## Method Challenges
 ### Challenge 1

 Given the `Circle` structure:
 
 ```
 struct Circle {
 
   var radius = 0.0
 
   var area: Double {
     return .pi * radius * radius
   }
 
   init(radius: Double) {
     self.radius = radius
   }
 }
 ```
 
 Write a method that can change an instance's area by a growth factor. For example if you call `circle.grow(byFactor: 3), the area of the instance will triple.
 
 Hint: Add a setter to `area`.
*/
// your code here
/*:
 ### Challenge 2
 Below is a naive way of writing `advance()` for the `SimpleDate` structure you saw earlier in the chapter:
 
 ```swift
let months = ["January", "February", "March",
              "April", "May", "June",
              "July", "August", "September",
              "October", "November", "December"]

struct SimpleDate {
  var month: String
  var day: Int

  mutating func advance() {
    day += 1
  }
}

var date = SimpleDate(month: "December", day: 31)
date.advance()
date.month // December; should be January!
date.day // 32; should be 1!
```
 
 */
let months = ["January", "February", "March",
              "April", "May", "June",
              "July", "August", "September",
              "October", "November", "December"]

struct SimpleDate {
  var month: String
  var day: Int
  
  mutating func advance() {
    day += 1
    // your code here
  }
}

var date = SimpleDate(month: "December", day: 31)
date.advance()
date.month // January
date.day // 1
/*:
 ### Challenge 3
 Add type methods to your `Math` namespace called `isEven` and `isOdd` that return true if a number is even or odd respectively.
 */
struct Math {}

// your code here

/*:
 ### Challenge 4
 It turns out that `Int` is just a struct.  Add the computed properties `isEven` and `isOdd` to `Int` using an extension.
 */
//your code here
/*:
 ### Challenge 5
Add the method `primeFactors()` to `Int`. Since this is an expensive operation, this is best left as an actual method.
*/
// your code here
