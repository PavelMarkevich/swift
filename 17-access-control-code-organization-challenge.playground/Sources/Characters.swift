import Foundation

//Create an enum GameCharacterType that defines values for elf, giant and wizard.
public enum GameCharacterType {
    case elf
    case giant
    case wizard
}

//Create a class protocol GameCharacter that has properties name, hitPoints and attackPoints. Implement this protocol for every character type.
public protocol GameCharacter {
    var name: GameCharacterType { get }
    var hitPoint: Int { get }
    var attackPoint: Int { get }
}
//Elves have 3 hit points, and 10 attack points. Wizards have 5 hit points and 5 attack points. Giants have 10 hit points and 3 attack points.

class Elf: GameCharacter {
    var name = GameCharacterType.elf
    var hitPoint = 3
    var attackPoint = 10
}

class Giant: GameCharacter {
    var name = GameCharacterType.giant
    var hitPoint = 10
    var attackPoint = 3
}

class Wizard: GameCharacter {
    var name = GameCharacterType.wizard
    var hitPoint = 5
    var attackPoint = 5
}
//Create a struct GameCharacterFactory with a single static method make(ofType: GameCharacterType) -> GameCharacter.

public struct GameCharacterFactory {
    public static func make(ofType: GameCharacterType) -> GameCharacter {
        switch ofType {
        case .elf:
            return Elf()
        case .giant:
            return Giant()
        case .wizard:
            return Wizard()
        }
    }
}

public func battle(_ first: GameCharacter, vs two: GameCharacter) {
    var hitPointTwo = two.hitPoint
    let attackPoint = first.attackPoint
    hitPointTwo -= attackPoint
    if hitPointTwo < 1 {
        print("\(two.name) defeated")
    }
}



