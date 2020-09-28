//
//  ViewFullImage.swift
//  PhotoGalleryApp
//
//  Created by Nguyễn Đức Hiếu on 9/25/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import UIKit

class ViewFullImage: UIViewController {
    
    var imageForId: ImageModel? = nil
    let data = imageManager()
    @IBOutlet weak var fullImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let btnClose = UIBarButtonItem(title: "Close", style: UIBarButtonItem.Style.plain, target: self, action: #selector(close))
        self.navigationItem.rightBarButtonItem = btnClose
        getImage()
    }
    
    @objc func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func getImage() {
        if imageForId != nil {
            data.getImageForPHAssetID(assetID: imageForId!.name) { (result) in
                      self.fullImage.image = result
            }
        }

    }
   
}
