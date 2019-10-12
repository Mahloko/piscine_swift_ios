//
//  ViewController.swift
//  Segue
//
//  Created by Mpho MAHLOKO on 2019/10/12.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueIdentifier" {
            segue.destination
        }
    }
}

