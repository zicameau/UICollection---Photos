//
//  PhotoCell.swift
//  UICollectionViews - Photos
//
//  Created by admin on 10/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell
{
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    var imageName: String! {
        didSet {
            photoImageView.image = UIImage(named: imageName)
        }
    }
    
}
