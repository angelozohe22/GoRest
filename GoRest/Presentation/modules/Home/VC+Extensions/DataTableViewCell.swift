//
//  DataTableViewCell.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setData(title: String, description: String){
        self.lblTitle.text = title
        self.lblDescription.text = description
    }
}
