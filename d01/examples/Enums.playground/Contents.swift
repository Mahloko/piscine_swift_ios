import UIKit

/* ************************************************************************** */
/*                                  Enum                                      */
/* ************************************************************************** */

enum TraficLight {
    case Green
    case Red
    case Orange
}

let light = TraficLight.Orange
light.hashValue


/* ************************************************************************** */
/*                                  Nested Types                              */
/* ************************************************************************** */


enum DoorState : String {
    case Open = "The door is open"
    case Closed = "The door is closed"
}

let door = DoorState.Open
door.rawValue



/* ************************************************************************** */
/*                                  Generics                                  */
/* ************************************************************************** */

//enum Option {
//    case Nil
//    case Value(Int)
//}

enum Option<T> {
    case Nil
    case Value(T)
}

var intOpt = Option.Value(42)

//intOpt = .Nil

switch intOpt {
case .Nil:
    print("Number is Nil")
case . Value (let n):
    print("Number is equal to \(n)")
}
