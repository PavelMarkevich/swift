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
 ## Advanced Classes
 ### Challenge 1
 Create three simple classes called `A`, `B`, and `C` where `C` inherits from `B` and `B` inherits from `A`. In each class initializer, call `print("I'm <X>!")` both before and after `super.init()`. Create an instance of `C` called `c`.  What order do you see each `print()` called in?
 */

class A {
    var name: String
    
    init(name: String) {
        self.name = name
        print("I'm A!")
    }
}

class B: A {
    var lastName: String
    
    init(name: String, lastName: String) {
        self.lastName = lastName
        print("I'm B do!")
        super.init(name: name)
        print("I'm B po!")
    }
}

class C: B {
    var old: Int
    
    init(name: String, lastName: String, old: Int) {
        self.old = old
        print("I'm C do!")
        super.init(name: name, lastName: lastName)
        print("I'm C po!")
    }
    
    deinit {
        print("I'm deinit C!")
    }
}

let c = C(name: "bus", lastName: "sgb", old: 4)
do {
    let _ = C(name: "bus", lastName: "sgb", old: 4)
}

/*:
 ### Challenge 2
  Implement `deinit` for each class. Place your `c` inside of a `do { }` scope which will cause the reference count to go to zero when it exits the scope. What order are the classes deinitialized in?
 */
// your code here for both Challenage 1 and Challenge 2
/*:
 ### Challenge 3
 Cast the instance of type `C` to an instance of type `A`. Which casting operation do you use and why?
 */

// your code here
var a = c as A
a.name
/*:
### Challenge 4
Create a subclass of `StudentAthlete` called `StudentBaseballPlayer` and include properties for `position`, `number`, and `battingAverage`.  What are the benefits and drawbacks of subclassing `StudentAthlete` in this scenario?
 */

class Person {
  var firstName: String
  var lastName: String

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

struct Grade {
  let letter: String
  let points: Double
}

class Student: Person {
  var grades: [Grade] = []
}

class StudentAthlete: Student {
  var sports: [String] = []
}

// your code here

class StudentBaseballPalyer: StudentAthlete {
    
    var position: String
    var number: Int
    var bettingAverege: Int
    
    init(pos: String, num: Int, bet: Int, first: String, last: String) {
        position = pos
        number = num
        bettingAverege = bet
        super.init(firstName: first, lastName: "cfccyh")
    }
}




class Test {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var t1: Test? = Test(name: "1")
t1?.name = "2"
let t2 = t1
t1 = nil
