//
//  ViewController.swift
//  Segue
//
//  Created by Mpho MAHLOKO on 2019/10/12.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        print(unwindSegue.identifier!)
    }
}

