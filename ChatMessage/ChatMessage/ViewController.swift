//
//  ViewController.swift
//  ChatMessage
//
//  Created by Nguyễn Đức Hiếu on 9/18/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import UIKit


struct CheckMessisComming {
    var isComming : Bool
    var mess1 : String
    var mess2 : String
    var image1 : String
    var image2 : String
    
}


var list : [CheckMessisComming] = [ CheckMessisComming (isComming: true, mess1: "helloooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello how are you ?", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "nooooooooooooooooooooooooooooooooooooooo", mess2: "nooooooooooooooooooooooooooooooooooooooo", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "helloooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello how are you ?", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "nooooooooooooooooooooooooooooooooooooooo", mess2: "nooooooooooooooooooooooooooooooooooooooo", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "helloooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello how are you ?", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "nooooooooooooooooooooooooooooooooooooooo", mess2: "nooooooooooooooooooooooooooooooooooooooo", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "helloooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello how are you ?", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "football"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: true, mess1: "hello", mess2: "hello", image1: "thaihoa", image2: "thaihoa"),CheckMessisComming (isComming: false, mess1: "nooooooooooooooooooooooooooooooooooooooo", mess2: "nooooooooooooooooooooooooooooooooooooooo", image1: "thaihoa", image2: "football"),]


class ViewController: UIViewController {
    
    @IBOutlet weak var chatTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }

    func setUpUI() {
        self.navigationItem.title = "Message"

        chatTableView.delegate = self
        chatTableView.dataSource = self
        chatTableView.register(UINib(nibName: "CellBoxMessage", bundle: nil), forCellReuseIdentifier: "CellBoxMessage")
        chatTableView.separatorStyle = .none
        chatTableView.backgroundColor = UIColor(white: 0.9, alpha: 5)
        
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellBoxMessage", for: indexPath) as! CellBoxMessage
        cell.checkIsComming(inFocell: list[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    
}
