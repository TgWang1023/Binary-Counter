//
//  CustomCell.swift
//  Binary Counter
//
//  Created by Tiange Wang on 9/11/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var numLabel: UILabel!
    
    weak var delegate: CountDelegate?
    
    @IBAction func subtract(_ sender: UIButton) {
        delegate?.tapMinus(self.tag)
    }
    @IBAction func add(_ sender: UIButton) {
        delegate?.tapPlus(self.tag)
    }
}
