//
//  CellBoxMessage.swift
//  ChatMessage
//
//  Created by Nguyễn Đức Hiếu on 9/18/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import UIKit

class CellBoxMessage: UITableViewCell {
    
    //    @IBOutlet weak var stack1: UIStackView!
    @IBOutlet weak var mess2: UILabel!//khong dat ten kieu nay, nen ghi ro rang
    @IBOutlet weak var mess1: UILabel!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    static let cornerRadiusConstant : CGFloat = 15
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
        
    }
    
    func setUpUI() {
        self.selectionStyle = .none
        image1.layer.cornerRadius = 35/2 //Nen lay 1 kich thuoc cu the ko de 35 hoac chu thich 35 la cai gi
        image2.layer.cornerRadius = 35/2
        view1.layer.cornerRadius = CellBoxMessage.cornerRadiusConstant
        view2.layer.cornerRadius = CellBoxMessage.cornerRadiusConstant
        mess2.textColor = .white
        view1.backgroundColor = UIColor(white: 0.9, alpha: 1)
        view2.backgroundColor = .blue
        
    }
    
    func checkIsComming(inFocell: CheckMessisComming) {
        
        if inFocell.isComming {
            mess1.text = inFocell.mess1
            image1.image = UIImage(named: inFocell.image1)
            image2.isHidden = true
            view2.isHidden = true
            
        } else {
            mess2.text = inFocell.mess2
            image2.image = UIImage(named: inFocell.image2)
            image1.isHidden = true
            view1.isHidden = true
        }
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        mess1.text = nil
        mess2.text = nil
        image1.image = nil
        image2.image = nil
        view1.isHidden = false
        view2.isHidden = false
        image1.isHidden = false
        image2.isHidden = false
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
