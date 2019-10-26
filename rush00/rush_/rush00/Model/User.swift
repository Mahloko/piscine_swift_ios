//
//  User.swift
//  rush00
//
//  Created by Mpho MAHLOKO on 2019/10/15.
//  Copyright © 2019 Murray MACDONALD. All rights reserved.
//

import UIKit
import Foundation

struct User: CustomStringConvertible {
    let name: String
    let last: String
    let login: String
    let photo: String
    let level: Any
    var description: String {
       "\n\tfirst name: \(name)\n\tlast name: \(last)\n\tlogin: \(login)\n\tlevel: \(level)\n\timage: \(photo)\n"
    }
}
