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
 
 Rewrite the `IceCream` structure below to use default values and lazy initialization:
 
 ```
 struct IceCream {
   let name: String
   let ingredients: [String]
 }
 ```
 
 1. Use default values for the properties.
 2. Lazily initialize the `ingredients` array.

 */
// your code here

struct IceCream {
    let name = "Oleg"
    lazy var ingredient: [String] = ["gdgfd"]
}

var iceCream = IceCream()
iceCream.ingredient





/*:
 ## Challenge 2
 
 At the beginning of the chapter, you saw a `Car` structure. Dive into the inner workings of the car and rewrite the `FuelTank` structure below with property observer functionality:
 
 ```swift
 struct FuelTank {
 var level: Double // decimal percentage between 0 and 1
 }
 ```
 
 1. Add a `lowFuel` stored property of Boolean type to the structure.
 2. Flip the `lowFuel` Boolean when the `level` drops below 10%.
 3. Ensure that when the tank fills back up, the `lowFuel` warning will turn off.
 4. Set the `level` to a minimum of `0` or a maximum of `1` if it gets set above or below the expected values.
 5. Add a `FuelTank` property to `Car`.
 */
struct FuelTank {
    
    var lowFuel: Bool
    var level: Double = 4 {
        willSet {
            if newValue * 100 < 10 {
                lowFuel = true
            } else {
                lowFuel = false
            }
        }
        didSet {
            if level < 0 {
                level = 0
            } else if level > 1 {
                level = 1
            }
        }
    }
}

struct Car {
    let make: String
    let color: String
    var tank: FuelTank
    mutating func update() {
        tank = FuelTank(lowFuel: false, level: 1)
    }
    
    
    var test: Int {
        return 1
    }
    
    func test1() -> Int {
        return 1
    }
}


var car = Car(make: "Delorian", color: "Silver", tank: FuelTank(lowFuel: false, level: 1))
car.tank.level = -1// level: 0, lowFuel: true
car.tank.level = 1.1 // level: 1, lowFuel: false
car.tank.level = 0.02

