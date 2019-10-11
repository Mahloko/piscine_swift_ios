// let card1 = Card(color : Color.Spade, value : Value.Ace)
// print(card1)
// let card2 = Card(color : Color.Diamond, value: Value.Two)
// print(card2)
// print(card1 == card2)


let card1 = Card(color: Color.Spade, value: Value.Ace)
print(card1.description)
let card2 = Card(color: Color.Diamond, value: Value.Jack)
print(card2.description)
print(card2.isEqual(card1))
print(card1 == card2)
