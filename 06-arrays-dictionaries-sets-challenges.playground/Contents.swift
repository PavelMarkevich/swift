
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
/*:
 ## Arrays
 ### Challenge 1.
 Which of the following are valid statements?
*/
 
let array1 = [Int]()      // your answer here
let array2 = [2]           // your answer here
let array3: [String] = [] // your answer here

//: Given:
let array4 = [1, 2, 3]

//: Which of the following five statements are valid

print(array4[0])  // your answer here
//print(array4[5])  // your answer here
array4[1...2]     // your answer here
//array4[0] = 4     // your answer here
//array4.append(4)  // your answer here

//: Given:
var array5 = [1, 2, 3]

//: Which of the five statements are valid?

array5[0] = array5[1]                 // your answer here
array5[0...1] = [4, 5]                // your answer here
//array5[0] = "Six"                     // your answer here
//array5 += 6                           // your answer here
for item in array5 { print(item) }    // your answer here

/*:
 ### Challenge 2
 Write a function that removes the first occurrence of a given integer from an array of integers.
 This is the signature of the function:
 
 ```
 func removingOnce(_ item: Int, from array: [Int]) -> [Int]
 ```
*/

// your code here
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var resultArray = array
    
    if let index = array.index(of: item) {
          resultArray.remove(at: index)
//        return resultArray
    }
    return resultArray
}
removingOnce(4, from: [1, 2, 3, 4, 5, 4])

/*:
 ### Challenge 3
 Write a function that removes all occurrences of a given integer from an array of integers. 
 This is the signature of the function:
 
```
 func removing(_ item: Int, from array: [Int]) -> [Int]
```
*/

// your code here
func removing(_ item: Int, from array: [Int]) -> [Int] {
    var resultArray = [Int]()
    for i in 0..<array.count {
        if item != array[i] {
            resultArray.append(array[i])
        }
    }
    return resultArray
}
removing(4, from: [1, 4, 5, 6, 4, 7])


/*:
 ### Challenge 4
 Arrays have a `reversed()` method that returns an array holding the same elements as the original array, in reverse order. 
 Write a function that does the same thing, without using `reversed()`. This is the signature of the function:

 ```
 func reversed(_ array: [Int]) -> [Int]
 ```
*/

// your code here
func reversed(_ array: [Int]) -> [Int] {
    var arrayReversed = [Int]()
    for i in 0..<array.count {
        arrayReversed.append(array[(array.count - 1) - i])
    }
    return arrayReversed
}
reversed([1, 2, 3, 4])



/*:
 ### Challenge 5
 Write a function that returns the middle element of an array.
 When array size is even, return the first of the two middle elememnts.
 
 ```swift
 func middle(_ array: [Int]) -> Int?
 ```
*/

// your code here
func middle(_ array: [Int]) -> Int? {
    var element = 0
    if (array.count - 1) % 2 == 0 {
        element = array[(array.count - 1) / 2]
    } else {
        element = array[(array.count - 2) / 2]
    }
    return element
}
middle([1, 2, 3, 4, 5, 6, 7])

/*:
 ### Challenge 6
 
 Write a function that calculates the minimum and maximum value in an array of integers. 
 Calculate these values yourself, do not use the methods `min` and `max`. 
 Return `nil` if the given array is empty.
 
 This is the signature of the function:

```
func minMax(of numbers: [Int]) -> (min: Int, max: Int)?
```
 
 */
// your code here
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    var max = numbers[0]
    var min = numbers[0]
    if numbers.isEmpty {
        return nil
    } else {
        for i in 1..<numbers.count {
            if max < numbers[i] {
                max = numbers[i]
            }
            if numbers[i] < min {
                min = numbers[i]
            }
        }
    }
    return (min: min, max: max)
}
minMax(of: [ 0, 2, 6, 2, 3, 1])
/*:
 ## Dictionaries
 ### Challenge 7
 Which of the following statements are valid?
 */

//let dict1: [Int, Int] = [:]   // your answer here
//let dict2 = [:]               // your answer here
let dict3: [Int: Int] = [:]   // your answer here

//: Given
let dict4 = ["One": 1, "Two": 2, "Three": 3]
//: Which of the following are valid:

//dict4[1]          // your answer here
dict4["One"]      // your answer here
//dict4["Zero"] = 0 // your answer here
//dict4[0] = "Zero" // your answer here

//: Given
var dict5 = ["NY": "New York", "CA": "California"]

//: Which of the following are valid?
dict5["NY"]                   // your answer here
dict5["WA"] = "Washington"    // your answer here
dict5["CA"] = nil             // your answer here


/*:
 ### Challenge 8
 Given a dictionary with 2-letter state codes as keys and the full state name as values, write a function that prints all the states whose name is longer than 8 characters. For example, for this dictionary ["NY": "New York", "CA": "California"] the output would be "California".
 */

// your code here

func printDictionary(dictionary: [String: String]) {
    for (key, value) in dictionary {
        if value.count > 8 {
            print("\(key) --- \(value)")
        }
    }
}

printDictionary(dictionary: ["NY": "New York", "CA": "California", "AM": "Amsterdam"])

/*:
 ### Challenge 9
 Write a function that combines two dictionaries into one. If a certain key appears in both dictionaries, ignore the pair from the first dictionary.
 This is the signature of the function:
 ```
 func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String]
 ```
 */

// your code here
func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var combineDictionary = [String : String]()
    for (key1, value1) in dict1 {
//        combineDictionary.updateValue(value, forKey: key)
        for (key2, value2) in dict2 {
            if key1 == key2 {
                combineDictionary.updateValue(value2, forKey: key2)
            } else {
                combineDictionary.updateValue(value1, forKey: key1)
                combineDictionary.updateValue(value2, forKey: key2)
            }
        }
    }
    return combineDictionary
}

combine(dict1: ["NY": "New York", "CA": "California"], with: ["AM": "Amsterdam", "CA": "Calif"])

/*:
 ### Challenge 10
 Declare a function `occurrencesOfCharacters` that calculates which characters occur in a string, as well as how often each of these characters occur.
 Return the result as a dictionary. This is the function signature:
 ```
 func occurrencesOfCharacters(in text: String) -> [Character: Int]
 ```
 Hint: `String` is a collection of characters that you can iterate over with a for statement.
*/

// your answer here
func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var occerrences: [Character: Int] = [:]
    var sum = [Character]()
    for char in text {
        sum.append(char)
    }
    
    for i in 0..<text.count {
        var count = 0
        for item in 1..<sum.count {
            if sum[i] == sum[item] {
                count += 1
                occerrences[sum[i]] = count
            }
        }
    }
    return occerrences
}

occurrencesOfCharacters(in: "abcaaabbbaaaa")

/*
 Bonus: To make your code shorter, dictionaries have a special subscript operator that let you add a default value if it is not found in the dictionary. For example, dictionary["a", default: 0] creates a 0 entry for the character "a" if it is not found instead of returning nil.
*/

func occurrencesOfCharactersBonus(in text: String) -> [Character: Int] {
  var occurrences: [Character: Int] = [:]
  for character in text {
    occurrences[character, default: 0] += 1
  }
  return occurrences
}

occurrencesOfCharactersBonus(in: "abcaaa")

/*:
 ### Challenge 11
 Write a function that returns true if all of the values of a dictionary are unique.  Use a set to test uniqueness.
 This is the function signature:
 ```
 lfunc isInvertible(_ dictionary: [String: Int]) -> Bool
 ```
 */
// your code here
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var setValue: Set<Int> = []
    for value in dictionary.values {
        setValue.insert(value)
    }
    if setValue.count == dictionary.count {
        return true
    } else {
        return false
    }
}

isInvertible(["GDH": 12, "jsdnjf": 12])
