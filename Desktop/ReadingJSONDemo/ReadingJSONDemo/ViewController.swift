//
//  ViewController.swift
//  ReadingJSONDemo
//
//  Created by Nguyễn Đức Hiếu on 10/20/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dataTableView: UITableView!
    let data = DataLoader().studentData
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    func setUpTableView() {
        dataTableView.delegate = self
        dataTableView.dataSource = self
        dataTableView.register(UINib(nibName: "DataTableViewCell", bundle: nil), forCellReuseIdentifier: "DataTableViewCell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableViewCell", for: indexPath) as! DataTableViewCell
        cell.nameStudentLabel.text = data[indexPath.row].info?.name
        cell.birthdayLabel.text = data[indexPath.row].info?.birthday
        cell.studenIDLabel.text = data[indexPath.row].student_id
        cell.loadAvataImage(url: data[indexPath.row].avatar ?? "", index: indexPath.row)
        cell.tag = indexPath.row
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
