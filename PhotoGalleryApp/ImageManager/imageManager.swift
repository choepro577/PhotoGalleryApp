//
//  imageManager.swift
//  PhotoGalleryApp
//
//  Created by Nguyễn Đức Hiếu on 9/23/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import UIKit
import Photos

class AlbumModel {
    let name: String
    let count: Int
    let collection: PHAssetCollection
    init(name: String, count: Int, collection: PHAssetCollection) {
        self.name = name
        self.count = count
        self.collection = collection
    }
}

class ImageModel {
    let name: String
    let phAsset: PHAsset
    let image: UIImage
    init(name: String, phAsset: PHAsset, image: UIImage) {
        self.name = name
        self.phAsset = phAsset
        self.image = image
    }
}

class imageManager: NSObject {
    func getAllAlbum() -> Array<AlbumModel> {
        
        var album:[AlbumModel] = [AlbumModel]()
        let myAlbum = PHAssetCollection.fetchAssetCollections(with: .album, subtype: .any, options: nil)
        let smartAlbum = PHAssetCollection.fetchAssetCollections(with: .smartAlbum, subtype: .any, options: nil)
        
        myAlbum.enumerateObjects{ (object: AnyObject!, count: Int, stop: UnsafeMutablePointer) in
            if object is PHAssetCollection {
                let objectt:PHAssetCollection = object as! PHAssetCollection
                let optionfetch = PHFetchOptions()
                let photoInAlbum = PHAsset.fetchAssets(in: objectt, options: optionfetch)
                if photoInAlbum.count > 0 {
                    let fetchOptions = PHFetchOptions()
                    fetchOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
                    fetchOptions.predicate = NSPredicate(format: "mediaType = %d", PHAssetMediaType.image.rawValue)
    
                    let setMyAlbum = AlbumModel(name: objectt.localizedTitle ?? "", count: photoInAlbum.count, collection:objectt)
                    album.append(setMyAlbum)
                }
            }
        }
        
        smartAlbum.enumerateObjects{ (object: AnyObject!, count: Int, stop: UnsafeMutablePointer) in
            if object is PHAssetCollection {
                let objectt:PHAssetCollection = object as! PHAssetCollection
                let optionfetch = PHFetchOptions()
                let photoInAlbum = PHAsset.fetchAssets(in: objectt, options: optionfetch)
                if photoInAlbum.count > 0 {
                    let fetchOptions = PHFetchOptions()
                    fetchOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
                    fetchOptions.predicate = NSPredicate(format: "mediaType = %d", PHAssetMediaType.image.rawValue)
                    let setMyAlbum = AlbumModel(name: objectt.localizedTitle ?? "", count: photoInAlbum.count, collection:objectt)
                    album.append(setMyAlbum)
                }
            }
        }
         return album
    }
    
    func getImageForPHAsset(asset: PHAsset, completionHandler: @escaping (UIImage) -> Void) {
       
        PHImageManager.default().requestImage(for: asset, targetSize: PHImageManagerMaximumSize, contentMode: .aspectFit, options: nil) { image, _ in
            completionHandler(image!)
        }
    }
    
    
    func getImageInAlbum(modelAlbum : AlbumModel, completionHandler: @escaping (Array<ImageModel>) -> Void) {
           
           let getImage = PHAsset.fetchAssets(in: modelAlbum.collection, options: nil)
           var images:[ImageModel] = [ImageModel]()
           getImage.enumerateObjects {(objectt: PHAsset, count: Int, stop: UnsafeMutablePointer) in
            self.getImageForPHAsset(asset: objectt) { (image) in
                let newImage = ImageModel(name: objectt.localIdentifier, phAsset: objectt, image: image)
                   images.append(newImage)
               }
                   completionHandler(images)
           }
       }
           
       func getImageForPHAssetID(assetID: String, completionHandler: @escaping (UIImage) -> Void) {
             let option = PHFetchOptions()
             let results = PHAsset.fetchAssets(withLocalIdentifiers: [assetID], options: option)
             getImageForPHAsset(asset: results.firstObject!) { (result) in
                     completionHandler(result)
                 }
             }
    
}
