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
 ## Collection Iteration with Closures
 ### Challenge 1: Repeating yourself
 
 Your first challenge is to write a function that will run a given closure a given number of times.
 
 Declare the function like so:
 
 ```swift
 func repeatTask(times: Int, task: () -> Void)
 ```
 
 The function should run the `task` closure, `times` number of times.
 
 Use this function to print `"Swift Apprentice is a great book!"` 10 times.
 */
// your code here

func repeatTask(times: Int, task: () -> Void) {
    var count = times
    while count != 0 {
        count -= 1
        task()
    }
}
let printer: () -> Void = {
        print("Swift Apprentice is a great book!")
}
repeatTask(times: 10, task: printer)

/*:
 ### Challenge 2: Closure sums
 
 In this challenge, you’re going to write a function that you can reuse to create different mathematical sums.
 
 Declare the function like so:
 
 ```swift
 func mathSum(length: Int, series: (Int) -> Int) -> Int
 ```
 
 The first parameter, `length`, defines the number of values to sum. The second parameter, `series`, is a closure that can be used to generate a series of values. `series` should have a parameter that is the position of the value in the series and return the value at that position.
 
 `mathSum` should calculate `length` number of values, starting at position 1, and return their sum.
 
 Use the function to find the sum of the first 10 square numbers, which equals 385. Then use the function to find the sum of the first 10 Fibonacci numbers, which equals 143. For the Fibonacci numbers, you can use the function you wrote in the functions chapter — or grab it from the solutions if you’re unsure your solution is correct.
 */
// your code here
func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var count = length
    var sumElement = 0
    while count != -1 {
        sumElement += series(count)
        count -= 1
    }
    return sumElement
}

let series: (Int) -> Int = { x in
    let multiply = x * x
    return multiply
}

let fibonacci: (Int) -> Int = { x in
    var x1 = 1
    var y = 0
    for _ in 0..<x {
        x1 += y
        y = x1 - y
    }
    return y
}

mathSum(length: 10, series: series)
mathSum(length: 10, series: fibonacci)
/*:
 ### Challenge 3: Functional ratings
 
 In this final challenge you will have a list of app names with associated ratings they’ve been given (note — these are all fictional apps!).
 
 Create the data dictionary like so:
 
 ```swift
 let appRatings = [
   "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
   "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
   "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
 ]
 ````
 
 First, create a dictionary called `averageRatings` which will contain a mapping of app names to average ratings. Then, use `forEach` to iterate through the `appRatings` dictionary, use `reduce` to calculate the average rating and store this rating in the `averageRatings` dictionary.
 
 Finally, use `filter` and `map` chained together to get a list of the app names whose average rating is greater than 3.
 */
// your code here

let appRatings = [
    "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

appRatings.forEach { word in
    print(word)
}

let averageRatings: [String: Int] = appRatings.reduce(into: [:]) {
    (result, this: (key: String, value: [Int])) in
    var sum = 0
    for i in 0..<this.value.count {
        sum += this.value[i]
    }
    result.updateValue(sum / this.value.count, forKey: this.key)
}

let filter = averageRatings.filter { $0.value > 2 }.map { (key, value) -> String in
    return key
}

print(filter)

