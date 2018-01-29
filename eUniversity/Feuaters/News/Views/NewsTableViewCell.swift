//
//  NewsTableViewCell.swift
//  eUniversity
//
//  Created by Damir Ramic on 17/01/2018.
//  Copyright © 2018 Damir Ramich. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsDateLabel: UILabel!
    @IBOutlet weak var newsTextLabel: UILabel!
    @IBOutlet weak var newsTitleLabel: UILabel!
    
    
    func populateCell(news:News) {
        newsTitleLabel.text = news.Title
        newsTextLabel.text = news.Text
        newsDateLabel.text = news.Date
        ImagesController.sharedController.getAnnouncmentsImages(announcmentID: String(news.AnnouncementID))
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
