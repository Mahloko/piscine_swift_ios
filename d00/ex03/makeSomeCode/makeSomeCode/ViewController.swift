//
//  ViewController.swift
//  makeSomeCode
//
//  Created by Mpho MAHLOKO on 2019/10/08.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelView: UILabel!
    var calc = 0
    var leftExp = 0
    var opera = 0
    
    @IBAction func numBtnClicked(_ sender: UIButton) {
        if (labelView.text == "0") {
            calc &*= 10
            calc &+= sender.tag
            labelView.text = String(sender.tag)
        }
        else {
            calc &*= 10
            calc &+= sender.tag
            labelView.text = String(calc)
        }
        print(sender.tag)
    }
    
    @IBAction func oprationsBtn(_ sender: UIButton) {
        if (sender.tag >= 12 && sender.tag <= 15) {
            if (opera != 0) {
                if (sender.tag == 12) {
                    leftExp /= calc
                    calc = 0
                    print("/ button was clicked")
                }
                if (sender.tag == 13) {
                    leftExp &*= calc
                    calc = 0
                    print("* button was clicked")
                }
                if (sender.tag == 14) {
                    leftExp &-= calc
                    calc = 0
                    print("- button was clicked")
                }
                if (sender.tag == 15) {
                    leftExp &+= calc
                    calc = 0
                    print("+ button was clicked")
                }
            }
            else {
                if (sender.tag == 12) {
                    leftExp /= calc
                    calc = 0
                    print("/ button was clicked")
                }
                if (sender.tag == 13) {
                    leftExp &*= calc
                    calc = 0
                    print("* button was clicked")
                }
                if (sender.tag == 14) {
                    leftExp &-= calc
                    calc = 0
                    print("- button was clicked")
                }
                if (sender.tag == 15) {
                    leftExp &+= calc
                    calc = 0
                    print("+ button was clicked")
                }
            }
            opera = sender.tag
            labelView.text = String(leftExp)
        }
        if (sender.tag == 10) {
            calc = 0
            leftExp = 0
            opera = 0
            print("AC button was clicked")
        }
        if (sender.tag == 11) {
            calc *= -1
            labelView.text = String(calc)
            print("NEG button was clicked")
        }
        if (sender.tag == 16) {
            leftExp &+= calc
            labelView.text = String(leftExp)
            print("= button was clicked")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

