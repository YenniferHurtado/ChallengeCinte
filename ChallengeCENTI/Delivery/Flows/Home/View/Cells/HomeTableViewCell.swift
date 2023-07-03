//
//  HomeTableViewCell.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell, ConfigurableCell {

    @IBOutlet weak var titleName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }

    func configure(data: DataModel) {
        self.titleName.text = data.title
    }
    
    func setupUI() {
        self.titleName.numberOfLines = 0
        self.selectionStyle = .none
    }
    
}
