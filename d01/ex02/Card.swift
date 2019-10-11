import Foundation
class Card : NSObject {
    var color : Color
    var value : Value

    init(color : Color, value : Value) {
        self.color = color
        self.value = value
    }

// print("\(val.rawValue) is known as \(val) of \(color.rawValue)")
    override var description: String {
        return ("(\(value.rawValue), \(color.rawValue))")
    }

    override func isEqual(_ Object: Any?) -> Bool {
        if Object is Card {
            if  self  == (Object as! Card) {
            return true
            } else {
                return false
            }
        } else {
            return false
        }
    }

    static func == (left: Card, right: Card) -> Bool {
    return left.color == right.color && left.value == right.value
  }
}
