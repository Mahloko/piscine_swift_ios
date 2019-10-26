//
//  TweetsTableViewController.swift
//  Tweets
//
//  Created by Mpho MAHLOKO on 2019/10/13.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit

class TweetsTableViewController: UITableViewController, APITwitterDelegate {
    
    // DataModel
    var tweets : [Tweet] = [Tweet(name: "School 42", text: "How many tweets can you see")]
    
    func processRecieved(name: [Tweet]) {
        self.tweets = name
        self.updateTableView()
    }
    
    func badRequest(error: NSError) {
        print(error)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tweets"
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableView.automaticDimension;
        let this = APIController(delegate: self, token: "3c16cd2aca50ae0b8e0a3430bf80d35c67b2e8b613dd64e60a0089e2c61530d5")
        this.sendARequest(req: "https://api.intra.42.fr/")
    }
    
    func updateTableView() {
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the  number of rows
        return self.tweets.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TweetCell", for: indexPath) as! TweetsTableViewCell
        let tweet = tweets[indexPath.row]
        
        cell.tweets = tweet
 
        return cell
    }

    /*
     Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
         Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
