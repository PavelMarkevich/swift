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
import Darwin
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
struct Circle {
    
    var radius = 0.0
    
    var area: Double {
        get {
            return .pi * radius * radius
        }
        set {
            radius = sqrt(newValue / .pi)
        }
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    mutating func grow(byFactor: Double) {
        area = (.pi * radius * radius) * byFactor
    }
}

var circle = Circle(radius: 1.0)
circle.area
circle.grow(byFactor: 3)
circle.area
circle.radius

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
    
    switch month {
    case months[0]:
        if day > 31 {
            day -= 31
            month = months[1]
        }
    case months[1]:
        if day > 28 {
            day -= 28
            month = months[2]
        }
    case months[2]:
        if day > 31 {
            day -= 31
            month = months[3]
        }
    case months[3]:
        if day > 30 {
            day -= 30
            month = months[4]
        }
    case months[4]:
        if day > 31 {
            day -= 31
            month = months[5]
        }
    case months[5]:
        if day > 30 {
            day -= 30
            month = months[6]
        }
    case months[6]:
        if day > 31 {
            day -= 31
            month = months[7]
        }
    case months[7]:
        if day > 31 {
            day -= 31
            month = months[8]
        }
    case months[8]:
        if day > 30 {
            day -= 30
            month = months[9]
        }
    case months[9]:
        if day > 31 {
            day -= 31
            month = months[10]
        }
    case months[10]:
        if day > 30 {
            day -= 30
            month = months[11]
        }
    case months[11]:
        if day > 31 {
            day -= 31
            month = months[0]
        }
    default:
        break
    }
    
  }
}

var date = SimpleDate(month: "December", day: 31)
date.advance()
date.month // January
date.day // 1
date.advance()

/*:
 ### Challenge 3
 Add type methods to your `Math` namespace called `isEven` and `isOdd` that return true if a number is even or odd respectively.
 */
struct Math {
    
    static func isEven(number: Int) -> Bool {
        if number % 2 == 0 {
            return true
        } else {
            return false
        }
    }
    
    static func isOdd(number: Int) -> Bool {
        if Math.isEven(number: number) {
            return false
        } else {
            return true
        }
    }
}

// your code here

Math.isEven(number: 10)
Math.isOdd(number: 6)

/*:
 ### Challenge 4
 It turns out that `Int` is just a struct.  Add the computed properties `isEven` and `isOdd` to `Int` using an extension.
 */
//your code here

extension Int {
    
    var isEven: Bool {
        if self % 2 == 0 {
            return true
        } else {
            return false
        }
    }
    
    var isOdd: Bool {
        if isEven {
            return false
        } else {
            return true
        }
    }
}

var number = 10
number.isEven
number.isOdd
/*:
 ### Challenge 5
Add the method `primeFactors()` to `Int`. Since this is an expensive operation, this is best left as an actual method.
*/
// your code here

extension Int {
    func primeFactors() {
        var number = self
        while (number % 2 == 0) {
            print(2)
            number /= 2
        }
        
        for i in stride(from: 3, to: number, by: 2) {
            while (number % i == 0) {
                print(i)
                number /= i
            }
        }
        
        if number > 2 {
            print(number)
        }
    }
}

let n = 315
n.primeFactors()
