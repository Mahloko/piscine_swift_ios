let cardColor = Color.allColors
let cardValue = Value.allValues

for color in cardColor {
    print("\n\t\tValues of \(color)\n")
    for val in cardValue {
        print("\(val) of \(color)")
    }
}

print("\n\t\tEnd of Deck ;-)")