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
    
    @IBAction func numBtnClicked(_ sender: UIButton) {
        labelView.text = String(sender.tag)
        print(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

