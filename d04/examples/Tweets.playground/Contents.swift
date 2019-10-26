import UIKit
import Foundation
import PlaygroundSupport

struct Tweet : CustomStringConvertible {
    let name: String
    let text: String
    
    var description: String {
        return "\(name) \n\(text)"
    }
    
}

protocol APITwitterDelegate {
    func processRecieved(name: [Tweet])
    func badRequest(error: NSError)
}

class APIController {
//    var delegate : APITwitterDelegate?
    let token : String

    init(/*delegate: APITwitterDelegate?,*/ token: String) {
//        self.delegate = delegate
        self.token = token
    }
    
    func sendARequest(req: String) {
        let info = URL(string: "https://api.twitter.com/1.1/search/tweets.json?q=\(req)&count=100&lang=en&result_type=recent".addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
        var request = URLRequest(url: info!)
        request.httpMethod = "GET"
        request.setValue("Bearer \(self.token)", forHTTPHeaderField: "Authorization")
        request.setValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")

        let task = URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) in
            if let err = error {
//                self.delegate?.badRequest(error: err as NSError)
                print(err)
            }
            else if let d = data {
                do {
                    if let dic = try JSONSerialization.jsonObject(with: d, options: []) as? [String: Any] {
                        print(dic)
                        var tweets : [Tweet] = []
                        let tweet : [NSDictionary] = (dic["tweet"] as? [NSDictionary])!
                        for twt in tweet {
                            let name = twt["user"] as! NSDictionary
                            let text = twt["text"]
                            tweets.append(Tweet(name: name.value(forKey: "name") as! String, text: text! as! String))
                        }
//                        self.delegate?.processRecieved(name: tweets)
//                        print(tweets)
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

 let be = "AAAAAAAAAAAAAAAAAAAAAD9QAQEAAAAAXjorrgdcVSLQLfl1aBhzHU%2Bo9NY%3DmEa5CV2osPjkJL5Fs4qhBGLGYxLJ34j1N7BBWkirpJQQHxe5RB"
let req1 = APIController(/*delegate: APITwitterDelegate,*/ token: be)
//req1.sendARequest(req:"https://api.twitter.com/1.1/tweets/search/30day/trialArc.json?query=%5C%22school%2042%5C%22&maxResults=100")
req1.sendARequest(req: "school 42")

PlaygroundPage.current.needsIndefiniteExecution = true


