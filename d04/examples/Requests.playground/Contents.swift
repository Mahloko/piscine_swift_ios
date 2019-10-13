import UIKit
import PlaygroundSupport


let CUSTOMER_KEY = ""
let CUSTOMER_SECRET = ""

let BEARER = ((CUSTOMER_KEY + ":" + CUSTOMER_SECRET).data(using: String.Encoding.utf8, allowLossyConversion: true))!.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))

let url = NSURL(string: "https://api.twitter.com/oauth2/token")
let request = NSMutableURLRequest(url: url! as URL)
request.httpMethod = "POST"
request.setValue("Basic " + BEARER, forHTTPHeaderField: "Authorization")
request.setValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")
request.httpBody = "grant_type=client_credentials".data(using: String.Encoding.utf8, allowLossyConversion: true)

let task = URLSession.shared.dataTask(with: request as URLRequest) {
    (data, response, error) in
    print(response!)
    if let err = error {
        print(err)
    }
    else if let d = data {
        do {
            if let dic : NSDictionary = try JSONSerialization.jsonObject(with: d, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary {
                print(dic)
            }
        }
        catch (let err) {
            print(err)
        }
    }
}
task.resume()

// The following is just for the playground to be able to send requests
PlaygroundPage.current.needsIndefiniteExecution = true
