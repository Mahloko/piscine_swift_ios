import UIKit

/* ************************************************************************** */
/*                              Struct                                        */
/* ************************************************************************** */

struct PointStruct {
    var x: Double
    var y: Double
    
    mutating func makeOrigin() {
        x = 0
        y = 0
    }
}


/* ************************************************************************** */
/*                                  Classes                                   */
/* ************************************************************************** */

class PointClass {
    var x: Double
    var y: Double
    
    init (x:Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    func makeOrigin() {
        x = 0
        y = 0
    }
    
    func toString() -> String {
        return "\(x) \(y)"
    }
}


/* ************************************************************************** */
/*                                Extention                                   */
/* ************************************************************************** */

extension PointStruct {
    func toString() -> String {
        return "\(x) \(y)"
    }
}


/* ************************************************************************** */
/*                            Class vs Struct                                 */
/* ************************************************************************** */

//var p1 = PointStruct(x: 21, y: 42)
 var p1 = PointClass(x: 21, y: 42)
var p2 = p1
print(p1.toString())
print(p2.toString())
p1.x = 0
print(p1.toString())
print(p2.toString())


/* ************************************************************************** */
/*                        Inheritance, Override and Overload                  */
/* ************************************************************************** */


class Point : PointClass { // Inheritance similar to c++
    override func toString() -> String {
        return "( : \(x), y : \(y))"
    }
    
    func toString(char: Character) -> String {
        return "\(char)"
    }
}

let p = Point(x: 84, y: 168)
print(p.toString())
print(p.toString(char: "G"))


