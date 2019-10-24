//
//  PhotosCollectionViewController.swift
//  UICollectionViews - Photos
//
//  Created by admin on 10/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

// UICollectionViewController
// UICollectionView
    // UICollectionViewCell
// UICollectionViewLayout -- UICollectionViewFlowLayout

import UIKit

class PhotosCollectionViewController: UICollectionViewController
{
    var photoCategories: [PhotoCategory] = PhotosLibrary.fetchPhotos()
    
    struct Storyboard {
        static let photoCell = "PhotoCell"
    }
    
    
    // MARK - View Controller Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: - change the layout of the collection view
        
    }
    
    // MARK: - UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return photoCategories.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoCategories[section].imageNames.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.photoCell, for: indexPath) as! PhotoCell
        let photoCategory = photoCategories[indexPath.section]
        let imageNames = photoCategory.imageNames
        let imageName = imageNames[indexPath.item]
        
        cell.imageName = imageName
        
        
        
        return cell
    }
}
