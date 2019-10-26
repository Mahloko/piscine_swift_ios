//
//  APIController.swift
//  rush00
//
//  Created by Mpho MAHLOKO on 2019/10/15.
//  Copyright © 2019 Murray MACDONALD. All rights reserved.
//

import UIKit
import Foundation


class APIController {
    weak var delegate : APIIntraDelegate?
    let token : String

    init(delegate: APIIntraDelegate?, token: String) {
        self.delegate = delegate
        self.token = token
    }
    
    func getUserInfo() {
        let info = URL(string: "https://api.intra.42.fr/v2/me".addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
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
                        let results = dic["cursus_users"] as! NSArray;
                        let cursus = results[0] as! NSDictionary
                        let level = cursus.value(forKey: "level")!
                        let user : [User] = [User(
                                                name: dic["first_name"] as! String,
                                                last: dic["last_name"] as! String,
                                                login: dic["login"] as! String,
                                                photo: dic["image_url"] as! String,
                                                level: level
                            )]
                        self.delegate?.processRecieved(name: user)
                    }
                    
                }
                catch (let err) {
                    print(err)
                }
            }
        }
        task.resume()
    }
    
        func getEvents() {
            let info = URL(string: "https://api.intra.42.fr/v2/events".addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
            var request = URLRequest(url: info!)
            request.httpMethod = "GET"
            request.setValue("Bearer \(self.token)", forHTTPHeaderField: "Authorization")
            //request.setValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")

            let task = URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) in
//                print(response)
                if let err = error {
                    self.delegate?.badRequest(error: err as NSError)
                }
                else if let d = data {
                    do {                        if let dic = try JSONSerialization.jsonObject(with: d, options: []) as? NSArray {
                            for e in dic {
                                let a = e as! NSDictionary
                                for (k, v) in a {
                                    print("\(k): \(v)")
                                }
                            }
//                            self.delegate?.processRecieved(name: user)
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
