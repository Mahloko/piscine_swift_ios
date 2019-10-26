//
//  TweetsTableViewCell.swift
//  Tweets
//
//  Created by Mpho MAHLOKO on 2019/10/13.
//  Copyright © 2019 Mpho MAHLOKO. All rights reserved.
//

import UIKit

class TweetsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tweetFrom: UILabel!
    @IBOutlet weak var tweetDesc: UILabel!
    
    
    var tweets: Tweet? {
        didSet{
            self.updateUI()
        }
    }
    
    func updateUI() {
        tweetFrom?.text = tweets?.name
        tweetDesc?.text = tweets?.text
    }
}
