//
//  DataTableViewCell.swift
//  ReadingJSONDemo
//
//  Created by Nguyễn Đức Hiếu on 10/20/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dataImageView: UIImageView!
    @IBOutlet weak var nameStudentLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var studenIDLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func loadAvataImage(url: String, index: Int) {
        let quene = DispatchQueue(label: "loadAvataImage", qos: .background)
        quene.async {
            let url = URL(string: url)
            do {
                if let urls = url {
                    let data = try Data(contentsOf: urls)
                    DispatchQueue.main.async {
                        if self.tag == index {
                            self.dataImageView.image = UIImage(data: data)
                        }
                    }
                }
            } catch {
                print(error)
            }
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
