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
 ## Challenge 1
 
 Taking the coin example from earlier in the chapter, begin with an array of coins.
 
 ```swift
 enum Coin: Int {
   case penny = 1
   case nickel = 5
   case dime = 10
   case quarter = 25
 }
 
 let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]
 ```
 
 Write a function where you can pass in the `coinPurse`, add up the value and return the number of cents.
 */
enum Coin: Int {
  case penny = 1
  case nickel = 5
  case dime = 10
  case quarter = 25
}

let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

// your code here

func cost(array: [Coin]) -> Int {
    var cost = 0
    for i in 0..<array.count {
        cost += array[i].rawValue
    }
    return cost
}
cost(array: coinPurse)

/*:
 ## Challenge 2
 
 Taking the example from earlier in the chapter, begin with the `Month` enumeration:
 
 ```swift
 enum Month: Int {
 case january = 1, february, march, april, may, june, july, august, september, october, november, december
 }
 ```
 
 Write a computed property to calculate the number of months until summer.
 
 **Hint:** You’ll need to account for a negative value if summer has already passed in the current year. To do that, imagine looping back around for the next full year.
 */
// your code here

enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
    
    var property: Int {
        var sum = 0
        if 6...8 ~= self.rawValue {
            sum = 0
        } else  if self.rawValue < 6 {
            sum = 6 - self.rawValue
        } else {
            sum = (12 - self.rawValue) + 6
        }
        return sum
    }
}

let a = Month.september
a.property


/*:
 ## Challenge 3
 
 Taking the map example from earlier in the chapter, begin with the `Direction` enumeration:
 
 ```swift
 enum Direction {
 case north
 case south
 case east
 case west
 }
 ```
 
 Imagine starting a new level in a video game. The character makes a series of movements in the game. Calculate the position of the character on a top-down level map after a set of movements:
 
 ```swift
 let movements: [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]
 ```
 
 **Hint:** Use a tuple for the location:
 
 ```swift
 var location = (x: 0, y: 0)
 ```
 */
enum Direction {
    case north
    case south
    case east
    case west
}

let movements: [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]

var location = (x: 0, y: 0)

// your code here

func coordinate(array: [Direction],location: inout (x: Int, y: Int))  {
    for i in 0..<array.count {
        switch array[i] {
        case .north:
            location.y += 1
        case .south:
            location.y -= 1
        case .east:
            location.x += 1
        case .west:
            location.x -= 1
        }
    }
}

coordinate(array: movements, location: &location)

let currentX = location.x // 1
let currentY = location.y // -2
