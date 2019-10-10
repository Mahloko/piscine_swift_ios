let cardColor = Color.allColors
let cardValue = Value.allValues

for color in cardColor {
    print("\n\t\tValues of \(color.rawValue)\n")
    for val in cardValue {
        print("\(val.rawValue) is known as \(val) of \(color.rawValue)")
    }
}

print("\n\t\tEnd of Deck ;-)")