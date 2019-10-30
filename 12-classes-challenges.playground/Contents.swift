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
 ## Classes
 ### Challenge 1

 Imagine you're writing a movie-viewing application in Swift. Users can create lists of movies and share those lists with other users.
 
 Create a `User` and a `List` class that uses reference semantics to help maintain lists between users.
 
 - `User` - Has a method `addList(_:)` which adds the given list to a dictionary of `List` objects (using the `name` as a key), and `list(forName:) -> List?` which will return the `List` for the provided name.
 - `List` - Contains a name and an array of movie titles. A `print` method will print all the movies in the list.
 - Create `jane` and `john` users and have them create and share lists. Have both `jane` and `john` modify the same list and call `print` from both users. Are all the changes reflected?
*/

// your code here

class User {
    
    var lists: [String: List] = [:]
    
    func addList(_ list: List) {
//        if name == self.list.name {
//            self.list.arrayFilms.append(array)
//        }
    }
    
    func list(forName: String) -> List? {
//        if self.list.name == forName {
//             return self.list
//        }
        return nil
    }
    
//    init(list: List) {
//        self.list = list
//    }
}

class List {
    
    var name: String
    var arrayFilms : [String]
    
//    var dict: [String: [String]] {
//        return [name: arrayFilms]
//    }
    
    init(name: String, arrayFilms: [String]) {
        self.name = name
        self.arrayFilms = arrayFilms
    }
    
    func print() {
//        Swift.print(self.dict)
    }
}

//let jane = User(list: List(name: "jane", arrayFilms: ["Ignore"]))
//let john = User(list: List(name: "john", arrayFilms: ["Titanic"]))
//
//jane.list.dict
//
//jane.addList(name: "hfh", array: "Oblast")
//john.addList(name: "john", array: "Time")
//jane.list.dict
//
//jane.list(forName: "jane")
//john.list(forName: "john")
//
//jane.list.print()
//john.list.print()
/*:
 
 What happens when you implement the same with structs and what problems do you run into?
 */
// your answer here

/*:
 ### Challenge 2
 
 Your challenge here is to build a set of objects to support a t-shirt store. Decide if each object should be a class or a struct, and why.
 
 - `TShirt` - Represents a shirt style you can buy. Each `TShirt` has a size, color, price, and an optional image on the front.
 - `User` - A registered user of the t-shirt store app. A user has a name, email, and a `ShoppingCart` (below).
 - `Address` - Represents a shipping address, containing the name, street, city, and zip code.
 - `ShoppingCart` - Holds a current order, which is composed of an array of `TShirt` that the `User` wants to buy, as well as a method to calculate the total cost. Additionally, there is an `Address` that represents where the order will be shipped.

 */

/*
 your code here
 */

struct TShirt {
    
    var size: String
    var color: String
    var price: Int
    var image: String
    
}

class Users {
    var name: String
    var email: String
    var shoppingCart: ShoppingCart
    init(name: String, email: String, shoppingCart: ShoppingCart) {
        self.name = name
        self.email = email
        self.shoppingCart = shoppingCart
    }
}

class Adress {
    var name: String
    var street: String
    var city: String
    var zipCode: Int
    
    init(name: String, street: String, city: String, zipCode: Int) {
        self.name = name
        self.street = street
        self.city = city
        self.zipCode = zipCode
    }
}

struct ShoppingCart {
    var arrayTShirt: [TShirt]
    var adress: Adress
    
    func cost() -> Int {
        var cost = 0
        for i in 0..<arrayTShirt.count {
            cost += arrayTShirt[i].price
        }
        return cost
    }
}

let tshirt1 = TShirt(size: "L", color: "black", price: 20, image: "car")
let tshirt2 = TShirt(size: "M", color: "white", price: 15, image: "tank")

let adress = Adress(name: "House", street: "lenina", city: "Grodno", zipCode: 230004)
let shoppingCard = ShoppingCart(arrayTShirt: [tshirt1, tshirt2], adress: adress)

let userAndrey = Users(name: "Andrey", email: "andrey@gmail.com", shoppingCart: shoppingCard)

userAndrey.shoppingCart.cost()

