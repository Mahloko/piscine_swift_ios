protocol myProtocol {
    var property1: String {get}
    var property2: Double {get set}
    func doStuff() -> [Int]
    func doAnotherStuff(param1: Int)
}


class myClass : myProtocol {
    var property1: String = "mpho"
    
    var property2: Double = 4.8
    
    func doStuff() -> [Int] {
        return [1, 2, 3, 4]
    }
    
    func doAnotherStuff(param1: Int) {
        if param1 == 42 {
            print("You Win !")
        }
    }
    
}

var myVar : myProtocol = myClass()
print(myVar.doStuff())
