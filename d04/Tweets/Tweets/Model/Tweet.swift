//
//  Tweet.swift
//  Tweets
//
//  Created by Mpho MAHLOKO on 2019/10/13.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit
import Foundation

struct Tweet : CustomStringConvertible {
    let name: String
    let text: String
    
    
    var description: String {
        return "\(name) \(text)"
    }
}
