//
//  SecondViewController.swift
//  Segue
//
//  Created by Mpho MAHLOKO on 2019/10/12.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backSegue" {
            if let vc = segue.destination as? ViewController {
                vc.title = "Back From 2nd View"
            }
        }
    }
    @IBAction func backButton() {
        performSegue( withIdentifier: "backSegue", sender: "Foo")
    }
}
