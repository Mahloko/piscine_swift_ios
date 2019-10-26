import UIKit
import PlaygroundSupport

let CUSTOMER_KEY = "006b2db960c4b83dca544dd76f751bf0ae75e080e70b8afdd303fb0ba0850938"
let CUSTOMER_SECRET = "9aed5afa25a22b2196d14ac14455b213e3b9519c33e937ae8806d378f2541536"
let bearer = ((CUSTOMER_KEY + ":" + CUSTOMER_SECRET).data(using: String.Encoding.utf8))!.base64EncodedString(options: Data.Base64EncodingOptions(rawValue: 0))

let url = NSURL(string: "https://api.intra.42.fr/oauth/token")
let request = NSMutableURLRequest(url: url! as URL)
request.httpMethod = "POST"
request.setValue("Basic " + bearer, forHTTPHeaderField: "Authorization")
request.setValue("application/x-www-form-urlencoded;charset-UTF-8", forHTTPHeaderField: "Content-Type")
request.httpBody = ("grant_type=client_credentials").data(using: String.Encoding.utf8)


print(request)
let task = URLSession.shared.dataTask(with: request as URLRequest, completionHandler: {
    (data, response, error) in
    if let r = response{
        print(r)
    }else{
        print("No response!")
    }
})
task.resume()
// The following is just for the playground to be able to send requests
PlaygroundPage.current.needsIndefiniteExecution = true
