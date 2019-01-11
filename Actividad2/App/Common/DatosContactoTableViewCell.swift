
//
//  DatosContactoTableViewCell.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 gs. All rights reserved.
//

import UIKit

class DatosContactoTableViewCell: UITableViewCell {

    @IBOutlet weak var imgContact: UIImageView!
    @IBOutlet weak var lbNombreContact: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
