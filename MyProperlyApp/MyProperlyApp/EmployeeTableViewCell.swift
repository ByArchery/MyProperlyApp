//
//  EmployeeTableViewCell.swift
//  MyProperlyApp
//
//  Created by David Andres Mejia Lopez on 9/5/19.
//  Copyright © 2019 David Andres Mejia Lopez. All rights reserved.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var seniorityLabel: UILabel!
    
    var employee: Employee! {
        didSet {
            self.nameLabel.text = employee.name
            self.idLabel.text = employee.id
            self.seniorityLabel.text = employee.seniority
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
