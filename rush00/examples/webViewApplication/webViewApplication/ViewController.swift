//
//  ViewController.swift
//  webViewApplication
//
//  Created by Mpho MAHLOKO on 2019/10/14.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var WebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://api.intra.42.fr/oauth/authorize?client_id=e89ddfbaea3e5f19bb720bb119d2bdc54490b4261724c3994d9a4d285d6252af&redirect_uri=https%3A%2F%2Fprofile.intra.42.fr&response_type=code")
        let request = URLRequest(url: url!)
        WebView.load(request)
        // Do any additional setup after loading the view.
    }


}

