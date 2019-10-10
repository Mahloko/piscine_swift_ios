import UIKit

/* ************************************************************************** */
/*                            Var, Let                                        */
/* ************************************************************************** */

var str1 = "Bonjour !"
var str2 = "Hello  !"
str1 = str2

let pi = 3.14 // let pi: Double
// pi = 2 is not possible as its a constant
// let pi : Float = 3.14

/* ************************************************************************** */
/*                            Tuple                                           */
/* ************************************************************************** */

let tuple = (str1, pi)
print(tuple)

let anotherTuple: (String, String, Int) = ("One", "Un", 1)
print(anotherTuple)
print(anotherTuple.2)


/* ************************************************************************** */
/*                            Array, Dictionary                               */
/* ************************************************************************** */

var fruits: [String] = [String]()
fruits.append("apple")
fruits.append("banana")
fruits.append("grapes")
// var fruits = ["apple", "banana", "grapes"]
print(fruits.first)
print(fruits[2])

var people = [String : Int]()
people["Mpho"] = 12
people["Sam"] = 64
print(people["Mpho"]!)
print(people["Sam"])

/* ************************************************************************** */
/*                            Optionnal                                       */
/* ************************************************************************** */

var optInt: Int? = 3
print(optInt)
print(optInt!)

optInt = 0
print(optInt)
print(optInt!)

optInt = nil
print(optInt)
// print(optInt!)

var optString: String! = "foo"
print(optString)
print(optString!)

optString = "bar"
print(optString)
print(optString!)

optString = nil
print(optString)
// print(optString!)

/* ************************************************************************** */
/*                            Weak                                            */
/* ************************************************************************** */

var button: UIButton? = UIButton()
CFGetRetainCount(button)

/* weak */ var buttonRef = button // type option !
CFGetRetainCount(button)

button = nil
CFGetRetainCount(buttonRef)

