//
//  APIController.swift
//  Tweets
//
//  Created by Mpho MAHLOKO on 2019/10/13.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit
import Foundation


class APIController {
    weak var delegate : APITwitterDelegate?
    let token : String

    init(delegate: APITwitterDelegate?, token: String) {
        self.delegate = delegate
        self.token = token
    }
    
    func sendARequest(req: String) {
        let info = URL(string: "https://api.intra.42.fr/\(req)&count=100&lang=en&result_type=recent".addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
        var request = URLRequest(url: info!)
        request.httpMethod = "GET"
        request.setValue("Bearer \(self.token)", forHTTPHeaderField: "Authorization")
        request.setValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")

        let task = URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) in
            if let err = error {
                self.delegate?.badRequest(error: err as NSError)
            }
            else if let d = data {
                do {
                    if let dic = try JSONSerialization.jsonObject(with: d, options: []) as? [String: Any] {
                        var tweets : [Tweet] = []
                        let tweet : [NSDictionary] = (dic["statuses"] as? [NSDictionary])!
                        for twt in tweet {
                            let name = twt["user"] as! NSDictionary
                            let text = twt["text"]
                            tweets.append(Tweet(name: name.value(forKey: "name") as! String, text: text! as! String))
                        }
                        self.delegate?.processRecieved(name: tweets)
                    }
                }
                catch (let err) {
                    print(err)
                }
            }
        }
        task.resume()
    }
}
