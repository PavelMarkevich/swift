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
 ## Memory Management
 ### Challenge 1
 
 Break the strong reference cycle in the following code:
 
 ```swift
 class Person {
 let name: String
 let email: String
 var car: Car?
 init(name: String, email: String) {
 self.name = name
 self.email = email
 }
 deinit {
 print("Goodbye \(name)!")
 }
 }
 
 class Car {
 let id: Int
 let type: String
 var owner: Person?
 init(id: Int, type: String) {
 self.id = id
 self.type = type
 }
 deinit {
 print("Goodbye \(type)!")
 }
 }
 var owner: Person? = Person(name: "Cosmin", email: "cosmin@whatever.com")
 var car: Car? = Car(id: 10, type: "BMW")
 owner?.car = car
 car?.owner = owner
 owner = nil
 car = nil
 ```
 */

// your code here

/*:
 ### Challenge 2
 
 Break the strong reference cycle in the following code:
 
 ```swift
 class Customer {
 let name: String
 let email: String
 var account: Account?
 
 init(name: String, email: String) {
 self.name = name
 self.email = email
 }
 
 deinit {
 print("Goodbye \(name)!")
 }
 }
 
 class Account {
 let number: Int
 let type: String
 let customer: Customer
 
 init(number: Int, type: String, customer: Customer) {
 self.number = number
 self.type = type
 self.customer = customer
 }
 
 deinit {
 print("Goodbye \(type) account number \(number)!")
 }
 }
 
 var customer: Customer? = Customer(name: "George", email: "george@whatever.com")
 var account: Account? = Account(number: 10, type: "PayPal", customer: customer!)
 
 customer?.account = account
 
 account = nil
 customer = nil
 ```
 */

// your code here
