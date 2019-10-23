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

/*:
 ## Xcode 10 Note
 For certain versions of Xcode Playgrounds, you may need to run the entire file
 with the Execute Playground button below. The play button next to the line numbers
 may be incorrectly disabled.

 ## Structures
 ### Challenge 1
 Implement a "playable" version of Tic-Tac-Toe (OXO). The focus of this exercise is on using structures. Represent Xs with a global string constant "X" and Os with a global string constant "O". While X and O could be cleanly represented with an enumeration type, you’ll learn about those in Chapter 15, “Enumerations”.  For now, you can make the type called `BoardPiece` as an alias to `String` using `typealias`.  The `BoardPiece` type can be used completely interchangeably with a `String`. While this doesn’t afford much in the way of formal type safety, it does add to the readability and documentation of your code.
 ```
 typealias BoardPiece = String
 let X: BoardPiece = "X"
 let O: BoardPiece = "O"
 ```
 */
// Structure Game should have the following properties:
//   - board: [BoardPiece?] The board is a 3x3 grid of BoardPieces.  nil means it is an empty position.
//   - currentPlayer: BoardPiece Current player, either O or X
//   - winner: BoardPiece? The winner of the game.  If there is no winner, return nil. (computed property)
//   - isFinished: Bool Return true if all the board positions are filled or there is a winner
// and the following methods:
//   - processSelection(position: Int) Set the position to the current player's board piece.  If the position
//     is invalid there is already a piece at the position, return without doing
//     anything.  Toggle the current player.
//   - printBoard() Print an ASCII representation of the board.
//     Example of empty board:
//   |   |
//-----------
//   |   |
//-----------
//   |   |

typealias BoardPiece = String
let X: BoardPiece = "X"
let O: BoardPiece = "O"

// your code here

struct Game {
    var board: [BoardPiece]
    
    var currentPlayer: BoardPiece
    
    var winner: BoardPiece? {
        if board[0] == X && board[4] == X && board[8] == X {
            return X
        } else if board[0] == O && board[4] == O && board[8] == O {
            return O
        }
        return nil
    }
    
    var iaFinished: Bool {
        for i in 0..<board.count {
            if board[i] != " " {
                return true
            } else if winner != nil {
                return true
            }
        }
        return false
    }
    
    mutating func processSelection(position: Int) {
        
        for i in 0..<board.count {
            if position == i {
                if board[i] == " " {
                    board[i] = currentPlayer
                }
            }
        }
        if currentPlayer == X {
            currentPlayer = O
        } else {
            currentPlayer = X
        }
    }
    
    mutating func printBoard() {
        print(
            """
               \(board[0]) | \(board[1]) |\(board[2])
               ---------
               \(board[3]) | \(board[4]) |\(board[5])
               ---------
               \(board[6]) | \(board[7]) |\(board[8])
            """
        )
    }
}

/*:
 Play a game!
 */

var game = Game(board: Array(repeating: " ", count: 9), currentPlayer: X)

print("Welcome to Tic-Tac-Toe!")
game.printBoard()

game.processSelection(position: 4)
game.processSelection(position: 3)
game.processSelection(position: 5)
game.processSelection(position: 2)
game.processSelection(position: 8)
game.processSelection(position: 1)
game.processSelection(position: 0)
game.processSelection(position: 6)
game.processSelection(position: 8)
game.printBoard()


print("Game over!")
game.iaFinished
if let winner = game.winner {
  print("The winner is player \(winner). Congratulations!")
} else {
  print("The game is tied. Try again!")
}


/*:
 ### Challenge 2
 Create a T-shirt structure that has size, color and material options. Provide methods to calculate the cost of a shirt based on its attributes.
 */
 
typealias Size = String
let small: Size = "Small"
let medium: Size = "Medium"
let large: Size = "Large"
let xLarge: Size = "XLarge"

typealias Material = String
let cotton: Material = "Cotton"
let polyester: Material = "Polyester"
let wool: Material = "Wool"

typealias Color = String
let red: Color = "Red"
let white: Color = "White"
let black: Color = "Black"

/*:
	**Note:** Using a floating point number is good for demonstrations, but there are subtle but important reasons why you should not use Floats or Doubles for currency in production. Read http://stackoverflow.com/questions/3730019/why-not-use-double-or-float-to-represent-currency
 */

// your code is here
struct Shirt {
    var size: Size
    var material: Material
    var color: Color
    
    func cost() -> Double {
        var cost = 0.0
        
        switch size {
        case small:
            cost += 10
        case medium:
            cost += 15
        case large:
            cost += 20
        case xLarge:
            cost += 25
        default:
            break
        }
        
        switch material {
        case cotton:
            cost += 5
        case polyester:
            cost += 10
        case wool:
            cost += 15
        default:
            break
        }
        
        switch color {
        case red:
            cost += 10
        case white:
            cost += 11
        case black:
            cost += 12
        default:
            break
        }
        return cost
    }
}

var shirt = Shirt(size: xLarge, material: cotton, color: black)
shirt.cost()

/*:
### Challenge 3
 Write the engine for a Battleship-like game. If you aren’t familiar with Battleship, see here: [http://bit.ly/2nT3JBU](http://bit.ly/2nT3JBU)
 * Use an (x, y) coordinate system for your locations and model using a structure.
 * Ships should also be modelled with structures. Record an origin, direction and length.
 * Each ship should be able to report if a “shot” has resulted in a “hit”.
*/

typealias Direction = String
let Right: Direction = "Right"
let Down: Direction = "Down"


struct Coordinate {
  let x: Int
  let y: Int
}

struct Ship {
    var origin: Coordinate
    var direction: Direction
    var length: Int
    
}

struct Board {
    var ships: [Ship] = []
    
    func fire(location: Coordinate) {
        for i in 0..<ships.count {
            if ships[i].direction == "Right" {
                if location.y == ships[i].origin.y && (ships[i].origin.x - (ships[i].length - 1)...ships[i].origin.x ~= location.x) {
                    print("Hit on the \(ships[i]) in coord x - \(location.x), y - \(location.y)")
                }
            } else if ships[i].direction == "Down" {
                if location.x == ships[i].origin.x && (ships[i].origin.y...ships[i].origin.y + (ships[i].length - 1) ~= location.y) {
                    print("Hit on the \(ships[i]) in coord x - \(location.x), y - \(location.y)")
                }
            }
        }
    }
}

/*:
 Set up ships.
 */

let patrolBoat = Ship(origin: Coordinate(x: 2, y: 2), direction: Right, length: 2)
let battleship = Ship(origin: Coordinate(x: 5, y: 3), direction: Down, length: 4)
let submarine = Ship(origin: Coordinate(x: 0, y: 0), direction: Down, length: 3)

/*:
  Set up the board.
  */

var board = Board()
board.ships.append(contentsOf: [patrolBoat, battleship, submarine])

/*:
 Play the game.
 */

board.fire(location: Coordinate(x: 2, y: 2)) // Hit on the patrolBoat
//
board.fire(location: Coordinate(x: 2, y: 3)) // Miss...
//
board.fire(location: Coordinate(x: 5, y: 6)) // Hit on the battleship
//
board.fire(location: Coordinate(x: 5, y: 7)) // Miss...
