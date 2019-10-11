/* ************************************************************************** */
/*                                  Cast                                      */
/* ************************************************************************** */

//              is
//              as, as?, as!

class Animal {
    var numberOfLegs = 0
}

class Dog : Animal {
    override init() {
        super.init()
        numberOfLegs = 4
    }
    
    func bark() {
        print("Waouf !")
    }
}

class Bird : Animal {
    override init() {
        super.init()
        numberOfLegs = 2
    }
    
    func fly() {
        print("Bird fly away...")
    }
}

var animals = [Animal]()

animals.append(Dog())
animals.append(Bird())
animals.append(Bird())
animals.append(Dog())
animals.append(Bird())

for animal in animals {
    if animal is Dog {
        print("Dog")
        let dog = animal as! Dog
        dog.bark()
    }
    else if animal is Bird {
        print("It's a Bird !")
    }
    else {
        print("I don't know what it is...")
    }
    let bird = animal as? Bird
    bird?.fly()
}

