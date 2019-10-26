//
//  APITwitterDelegate.swift
//  Tweets
//
//  Created by Mpho MAHLOKO on 2019/10/13.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit
import Foundation

protocol APITwitterDelegate: class {
    func processRecieved(name: [Tweet])
    func badRequest(error: NSError)
}
