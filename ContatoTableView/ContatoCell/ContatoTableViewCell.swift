//
//  ContatoTableViewCell.swift
//  ContatoTableView
//
//  Created by Jefferson Valverde on 01/12/22.
//

import UIKit

class ContatoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var selfImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var celLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    static let identifier: String = "ContatoTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupCell(_ data: cadastrados) {
        selfImageView.image = data.selfImage
        nameLabel.text = data.name
        celLabel.text = data.cel
        emailLabel.text = data.mail
        
    }
    

    
}
