class Card : NSObject {
    var color : Color
    var value : Value

    init(color : Color, value : Value) {
        self.color = color
        self.value = value
    }

print("\(val.rawValue) is known as \(val) of \(color.rawValue)")
    override var description: String {
        return ("\(value) \(color)")
    }
}