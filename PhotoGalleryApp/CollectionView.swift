//
//  CollectionView.swift
//  PhotoGalleryApp
//
//  Created by Nguyễn Đức Hiếu on 9/23/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import UIKit

class CollectionView: UIViewController {
    let data = imageManager()
    var inforAlbum: AlbumModel? = nil
    var inforImage: [ImageModel] = [ImageModel]()

    @IBOutlet weak var albumCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if inforAlbum != nil {
            data.getImageInAlbum(modelAlbum: inforAlbum!) { (result) in
                self.inforImage = result
                self.albumCollectionView.reloadData()
            }
        }
    }
    
    func setUpUI() {
        albumCollectionView.delegate = self
        albumCollectionView.dataSource = self
        albumCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CellID")
    }
}

// MARK: - COLLECTIONVIEW DELEGATE,DATASOURCE
extension CollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        inforImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath) as! CollectionViewCell
        cell.loadImage(model: inforImage[indexPath.row] as ImageModel)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           let vc = ViewFullImage()
           let nav = UINavigationController(rootViewController: vc)
            vc.imageForId = inforImage[indexPath.row]
            nav.modalPresentationStyle = .fullScreen
            self.navigationController?.present(nav, animated: true, completion: nil)
       }
    
}

extension CollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spaceItem: CGFloat = 5.0
        let numberCellForRow: CGFloat = 4
        let widthForOneItem = (self.view.bounds.size.width - (spaceItem * (numberCellForRow + 1))) / numberCellForRow
        return CGSize (width: widthForOneItem, height: widthForOneItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
    
    
}
