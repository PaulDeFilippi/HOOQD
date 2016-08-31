//
//  PostCell.swift
//  Hooqd
//
//  Created by Paul Defilippi on 8/27/16.
//  Copyright © 2016 Paul Defilippi. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    
        postImg.layer.cornerRadius = 15.0 // postImg.frame.size.width / 2
        postImg.clipsToBounds = true
    
    }
    
    func configureCell(post: Post) {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
        postImg.image = DataService.instance.imageAtPath(post.imagePath)
    }

    
}
