//
//  ViewController.swift
//  PhotoGalleryApp
//
//  Created by Nguyễn Đức Hiếu on 9/22/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import UIKit
import Photos

//let navigationViewController = UINavigationController (rootViewController: ViewController)

class ViewController: UIViewController {
    @IBOutlet weak var tableViewAlbum: UITableView!
    
   
    var listAlbum:[AlbumModel] = [AlbumModel]()
    var listImageInAlbum:[ImageModel] = [ImageModel]()
    let getAllInfoAlbum = imageManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        checkPhotoLibraryPermission()
    }
    
    func setUpUI() {
        tableViewAlbum.delegate = self
        tableViewAlbum.dataSource = self
        tableViewAlbum.register(UINib(nibName: "TableViewCellAlbum", bundle: nil),
                                forCellReuseIdentifier: "TableViewCellAlbum")
        self.navigationItem.title = "All Album"
    }
    
    func loadAllAlbum() {
        listAlbum = getAllInfoAlbum.getAllAlbum(
)
        DispatchQueue.main.async {
            self.tableViewAlbum.reloadData()
        }
    }
    
    func checkPhotoLibraryPermission() {
        let status = PHPhotoLibrary.authorizationStatus()
        switch status {
        case .authorized:
            self.loadAllAlbum()
            
            break
        case .denied, .restricted, .notDetermined:
            PHPhotoLibrary.requestAuthorization { [weak self] (authorization) in
                if authorization == .authorized {
                    self?.loadAllAlbum()
                } else {
                    self?.alertToEncouragePhotoLibraryAccessWhenApplicationStarts()
                }
            }
            break
        }
    }
    
    
    func alertToEncouragePhotoLibraryAccessWhenApplicationStarts()
    {
        //Photo Library not available - Alert
        let cameraUnavailableAlertController = UIAlertController (title: "Photo Library Unavailable", message: "Please check to see if device settings doesn't allow photo library access", preferredStyle: .alert)
        self.present(cameraUnavailableAlertController , animated: true, completion: nil)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listAlbum.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellAlbum", for: indexPath) as! TableViewCellAlbum
        
        getAllInfoAlbum.getImageInAlbum(modelAlbum: listAlbum[indexPath.row]) {
            (result) in
            self.listImageInAlbum = result
        }
        
        cell.nameAlbumCell(nameAlbum: listAlbum[indexPath.row])
        
        cell.mainImageAlbum(nameImage: listImageInAlbum[listImageInAlbum.endIndex-1])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let coll = CollectionView(nibName: "CollectionView", bundle: nil)
        self.navigationController?.pushViewController(coll, animated: true)
        coll.navigationItem.title = listAlbum[indexPath.row].name
        
        
        if coll.inforAlbum == nil {
            coll.inforAlbum = listAlbum[indexPath.row]
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    

}
