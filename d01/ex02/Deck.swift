import Foundation

class Deck : NSObject {
    static let allSpades : [Card] = []
    static let allDiamonds : [Card] = []
    static let allHearts : [Card] = []
    static let allClubs : [Card] = []

    static let allCards : [Card] = [allCards, allDiamonds, allHearts, allSpades]
}

class Build {
    c: Color
    v: Value
    init(v: Value, c: Color) {
        self.c = c
        self.v = v
    }

    func generatePossibleCards() -> [Card] {
        var cards: [Card]
        for 
    }
}