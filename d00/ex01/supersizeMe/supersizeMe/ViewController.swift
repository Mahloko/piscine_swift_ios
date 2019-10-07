//
//  ViewController.swift
//  supersizeMe
//
//  Created by Mpho MAHLOKO on 2019/10/07.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayMsg: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        return ;
    }
        
    @IBAction func clickMe(_ sender: Any) {
        displayMsg.text = "You clicked the button !";
        print("Hello World !")
        return ;
    }
}

