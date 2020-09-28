//
//  CollectionViewCell.swift
//  PhotoGalleryApp
//
//  Created by Nguyễn Đức Hiếu on 9/23/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageAlbum: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func loadImage(model: ImageModel) {
        self.imageAlbum.image = model.image
    }

}
