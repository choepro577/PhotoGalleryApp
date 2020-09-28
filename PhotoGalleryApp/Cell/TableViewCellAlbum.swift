//
//  TableViewCellAlbum.swift
//  PhotoGalleryApp
//
//  Created by Nguyễn Đức Hiếu on 9/22/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import UIKit

class TableViewCellAlbum: UITableViewCell {

    @IBOutlet weak var mainImageforAlbum: UIImageView!
    @IBOutlet weak var lbnNameAlbum: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    func nameAlbumCell(nameAlbum: AlbumModel) {
        lbnNameAlbum.text = nameAlbum.name
    }
    
    func mainImageAlbum(nameImage: ImageModel) {
        mainImageforAlbum.image = nameImage.image
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)

    }
    
}
