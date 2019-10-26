//
//  ViewController.swift
//  rush00
//
//  Created by Murray MACDONALD on 2019/10/13.
//  Copyright © 2019 Murray MACDONALD. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, APIIntraDelegate {
    func processRecieved(name: [User]) {
        print(name)
    }
    
    func badRequest(error: NSError) {
        print(error)
    }
    

    @IBOutlet weak var webView: WKWebView!
    
    let HOST = "www.wethinkcode.co.za"
    let CUSTOMER_KEY = "006b2db960c4b83dca544dd76f751bf0ae75e080e70b8afdd303fb0ba0850938"
    let CUSTOMER_SECRET = "9aed5afa25a22b2196d14ac14455b213e3b9519c33e937ae8806d378f2541536"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let login_url = NSURLComponents(string: "https://api.intra.42.fr/oauth/authorize")
        login_url?.queryItems = [
            URLQueryItem(name: "client_id", value: CUSTOMER_KEY),
            URLQueryItem(name: "response_type", value: "code"),
            URLQueryItem(name: "redirect_uri", value: "http://" + HOST)
        ]
        let login_request = NSMutableURLRequest(url: (login_url?.url)!)
        
        webView?.navigationDelegate = self
        webView.load(login_request as URLRequest)
    }
    
    func getQueryStringParameter(url: String, param: String) -> String? {
        if let newUrl = URLComponents(string: url) {
            return newUrl.queryItems?.first(where: { $0.name == param })?.value
        }
        else {
            return (nil)
        }
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if navigationAction.navigationType == .formSubmitted{
            if navigationAction.request.url?.host == HOST{
                if let code = getQueryStringParameter(url: navigationAction.request.url!.absoluteString, param: "code"){
                    let url = URL(string: "https://api.intra.42.fr/oauth/token")
                    var request = URLRequest(url: url!)
                    request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                    request.httpMethod = "POST"
                    let parameters =
                        "grant_type=authorization_code" + "&" +
                        "client_id=" + String(CUSTOMER_KEY) + "&" +
                        "client_secret=" + String(CUSTOMER_SECRET) + "&" +
                        "code=" + String(code) + "&" +
                        "redirect_uri=http://" + String(HOST)
                    request.httpBody = parameters.data(using: String.Encoding.utf8)
                    let task = URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) in
                        if let e = error{
                            print(e)
                        }
                        else if let d = data{
                            do {
                                if let jsonData = try JSONSerialization.jsonObject(with: d, options: []) as? [String: Any]{
                                    print (jsonData)
                                        let tok : NSString = (jsonData["access_token"])! as! NSString
                                        let this = APIController(delegate: self, token: tok as String)
                                        this.getUserInfo()
                                        this.getEvents()
                                }
                            } catch (let err){
                                print("\(err)")
                            }
                        }else{
                            print("No response!")
                        }
                    }
                    task.resume()
                }
                decisionHandler(.cancel)
                return
            }
        }
        decisionHandler(.allow)
    }
}
