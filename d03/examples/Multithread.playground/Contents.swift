//: Playgroud - noun: a place where people can play

import UIKit

// let qos = DispatchQoS.unspecified.qosClass
let qos = DispatchQoS.background.qosClass
// let qos = DispatchQoS.background.qosClass
// let qos = DispatchQoS.background.qosClass
// let qos = DispatchQoS.background.qosClass
// let qos = DispatchQoS.background.qosClass

let queue = DispatchQueue.global(qos: qos)

// queue.async(execute: {print("This come from an OTHER queue!")})
queue.async {
    DispatchQueue.main.async {
//        imageView.image = UIImage()
//        anything that changes the display must be done on the same queue
    }
    print("This come from an OTHER queue!")
}
print("This come from the MAIN queue!")
