//
//  ListeCell.swift
//  Codata
//
//  Created by Macinstosh on 14/01/2019.
//  Copyright © 2019 ozvassilius. All rights reserved.
//

import UIKit

class ListeCell: UITableViewCell {

    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    var liste : Liste!
    
    func setupCell(liste:Liste)  {
        self.liste = liste
        nameLBL.text = self.liste.name
        
        if self.liste.date != nil {
        dateLbl.text = "Créé le : " + self.liste.date!.toString()
        } else {
            dateLbl.text = "Aucune date dispo"
        }
    }

}
