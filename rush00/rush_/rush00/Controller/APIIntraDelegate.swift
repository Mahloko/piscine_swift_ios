//
//  APIIntraDelegate.swift
//  rush00
//
//  Created by Mpho MAHLOKO on 2019/10/15.
//  Copyright © 2019 Murray MACDONALD. All rights reserved.
//

import UIKit
import Foundation

protocol APIIntraDelegate: class {
    func processRecieved(name: [User])
    func badRequest(error: NSError)
}
