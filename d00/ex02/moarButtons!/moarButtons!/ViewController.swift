//
//  ViewController.swift
//  moarButtons!
//
//  Created by Mpho MAHLOKO on 2019/10/07.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var displayValue: UILabel!
    
    @IBAction func clearBtn(_ sender: Any) {
    }
    @IBAction func negBtn(_ sender: Any) {
    }
    
    @IBAction func divBtn(_ sender: Any) {
    }
    @IBAction func multBtn(_ sender: Any) {
    }
    @IBAction func subBtn(_ sender: Any) {
    }
    @IBAction func addBtn(_ sender: Any) {
    }
    @IBAction func equalBtn(_ sender: Any) {
    }
    
    @IBAction func num0Btn(_ sender: Any) {
        displayValue.text = "0";
        print("0 clicked");
    }
    @IBAction func num1Btn(_ sender: Any) {
        displayValue.text = "1";
        print("1 clicked");
    }
    @IBAction func num2Btn(_ sender: Any) {
        displayValue.text = "2";
        print("2 clicked");
    }
    @IBAction func num3Btn(_ sender: Any) {
        displayValue.text = "3";
        print("3 clicked");
    }
    @IBAction func num4Btn(_ sender: Any) {
        displayValue.text = "4";
        print("4 clicked");
    }
    @IBAction func num5Btn(_ sender: Any) {
        displayValue.text = "5";
        print("5 clicked");
    }
    @IBAction func num6Btn(_ sender: Any) {
        displayValue.text = "6";
        print("6 clicked");
    }
    @IBAction func num7Btn(_ sender: Any) {
        displayValue.text = "7";
        print("7 clicked");
    }
    @IBAction func num8Btn(_ sender: Any) {
        displayValue.text = "8";
        print("8 clicked");
    }
    @IBAction func num9Btn(_ sender: Any) {
        displayValue.text = "9";
        print("9 clicked");
    }
}

