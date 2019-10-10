struct Person {

/* ************************************************************************** */
/*                               Stored Properties                            */
/* ************************************************************************** */
    
    var name: String
    
/* ************************************************************************** */
/*                                  Observers                                 */
/* ************************************************************************** */
    
    var age: Int {
        willSet {
            print("\(name) will change his age from \(age) to \(newValue)")
        }
        didSet {
            print("\(name) did change his age from \(oldValue) to \(age)")
        }
    }
    
/* ************************************************************************** */
/*                            Computed Properties                             */
/* ************************************************************************** */
    var description: String {
        get {
            return "name : \(name), age : \(age)"
        }
    }
    
    var isMinor: Bool {
        get {
            return age < 18
        }
        set {
            if newValue {
                age = 17
            }
            else {
                age = 18
            }
        }
    }
}

var joe = Person(name: "Joe", age: 12)
joe.description
// joe.description = "Mike"
joe.isMinor
joe.age = 32
joe.isMinor = true
