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

import Foundation
//: Pet shop tasks
//:
//: Create a collection of protocols for tasks that need doing at a pet shop. The pet shop has dogs, cats, fish and birds.
//: The pet shop duties can be broken down into these tasks:
//:
//: * All pets need to be fed.
//:
//: * Pets that can fly need to be caged.
//:
//: * Pets that can swim need a tank.
//:
//: * Pets that walk need exercise.
//:
//: * Tanks, cages, and litter boxes need to occasionally be cleaned.
//:

//: 1. Create classes or structs for each animal and adopt the appropriate protocols. Feel free to simply use a print() statement for the method implementations.

// your code here
protocol PetsNeedBeFed {
    func fed()
}

protocol PetsFlyNeedBeCaged {
    func caged()
}

protocol PetsSwimNeedATank {
    func tank()
}

protocol PetsWalkNeedExercise {
//    var f: Int { get  set }
    func exercise()
}

protocol CleanedTanksCagesBoxes {
    func clean()
}

struct Dog: PetsNeedBeFed, PetsWalkNeedExercise {
    
    func fed() {
        print("I'm fed")
    }
    
    func exercise() {
        print("Exercise")
    }
}

struct Fish: PetsNeedBeFed, PetsSwimNeedATank, CleanedTanksCagesBoxes {
    func fed() {
        print("I'm fed")
    }
    
    func tank() {
        print("Tank")
    }
    
    func clean() {
        print("Tank is clean")
    }
}

struct Birds: PetsNeedBeFed, PetsFlyNeedBeCaged, CleanedTanksCagesBoxes {
    func fed() {
        print("I'm fed")
    }
    
    func caged() {
        print("Caged")
    }
    
    func clean() {
        print("Caged is clean")
    }
}

struct Test {
    let pet: PetsNeedBeFed & PetsSwimNeedATank & CleanedTanksCagesBoxes
}
//: 2. Create homogenous arrays for animals that need to be fed, caged, cleaned, walked, and tanked. Add the appropriate animals to these arrays. The arrays should be declared using the protocol as the element type, for example `var caged: [Cageable]`.

// your code here

let dogMars = Dog()
let dogSharik = Dog()
let fishGold = Fish()
let fishPerch = Fish()
let birdsParrot = Birds()
let birdsBullfinch = Birds()

var arrayPetsNeedFed: [PetsNeedBeFed] = [dogMars, dogSharik, fishGold, fishPerch, birdsParrot, birdsBullfinch]
var arrayPetsNeedCaged: [PetsFlyNeedBeCaged] = [birdsParrot, birdsBullfinch]
var arrayPetsNeedCleaned: [CleanedTanksCagesBoxes] = [fishGold, fishPerch, birdsParrot, birdsBullfinch]
var arrayPetsNeedWalked: [PetsWalkNeedExercise] = [dogSharik, dogMars]
var arrayPetsNeedTanker: [PetsSwimNeedATank] = [fishPerch, fishGold]

//: 3. Write a loop that will perform the proper tasks (such as feed, cage, walk) on each element of each array.

// your code here

func tasks(array: [Any]) {
    for item in array {
        if let x = item as? PetsNeedBeFed {
            x.fed()
        }

        if let x = item as? PetsSwimNeedATank {
            x.tank()
        }

        if let x = item as? PetsWalkNeedExercise {
            x.exercise()
        }

        if let x = item as? PetsFlyNeedBeCaged {
            x.caged()
        }

        if let x = item as? CleanedTanksCagesBoxes {
            x.clean()
        }
    }
}

tasks(array: arrayPetsNeedCaged)

