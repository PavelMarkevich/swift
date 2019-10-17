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
 ### Challenge 1: Singleton pattern
 A singleton is a design pattern that restricts the instantiation of a class to one object. Use access modifiers to create a singleton class Logger. This Logger should:
 - Provide shared, public, global access to the single Logger object.
 - Not be able to be instantiated by consuming code.
 - Have a method log() that will print a string to the console.
 */

// your code here

/*:
 ### Challenge 2: Stack
Declare a generic type Stack. A stack is a LIFO (last-in-first-out) data structure that supports the following operations:
- peek: returns the top element on the stack without removing it. Returns nil if the stack is empty.
- push: adds an element on top of the stack.
- pop: returns and removes the top element on the stack. Returns nil if the stack is
empty.
- count: returns the size of the stack.
Ensure that these operations are the only exposed interface. In other words, additional properties or methods needed to implement the type should not be visible.
 */
// your code here

/*:
 ### Challenge 3: Character battle
Utilize something called a static factory method to create a game of Wizards vs. Elves vs. Giants.
Add a file Characters.swift in the Sources folder of your playground.
To begin:
- Create an enum GameCharacterType that defines values for elf, giant and wizard.
    - Create a class protocol GameCharacter that has properties name, hitPoints and attackPoints. Implement this protocol for every character type.
- Create a struct GameCharacterFactory with a single static method make(ofType: GameCharacterType) -> GameCharacter.
- Create a global function battle that pits two characters against each other — with the first character striking first! If a character reaches 0 hit points, they have lost.
 
Hints:
- The playground should not be able to see the concrete types that implement
GameCharacter.
- Elves have 3 hit points, and 10 attack points. Wizards have 5 hit points and 5 attack
points. Giants have 10 hit points and 3 attack points.
- The playground should know none of the above!
 
In your playground, you should use the following scenario as a test case:
 ```
let elf = GameCharacterFactory.make(ofType: .elf)
let giant = GameCharacterFactory.make(ofType: .giant)
let wizard = GameCharacterFactory.make(ofType: .wizard)
battle(elf, vs: giant) // Giant defeated!
battle(wizard, vs: giant) // Giant defeated!
battle(wizard, vs: elf) // Elf defeated!
 ```
 */
// your code here
