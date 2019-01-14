//
//  ViewController.swift
//  Codata
//
//  Created by Macinstosh on 14/01/2019.
//  Copyright © 2019 ozvassilius. All rights reserved.
//

import UIKit
import CoreData

class ListeController: UIViewController {
    
    @IBOutlet weak var  tableView : UITableView!
    @IBOutlet weak var  holderView : ViewShadow!
    @IBOutlet weak var  naleTF: UITextField!

    var listes : [Liste] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        updateListe()
        
    }

    func updateListe()  {
        CoreDataHelper().getListe { (listes) in
            if listes != nil {
                DispatchQueue.main.async {
                    self.listes = listes!
                    self.tableView.reloadData()
                }
            }
            
        }
    }

    // mes actions
    
    @IBAction func addListe(_ sender:UIButton) {
        CoreDataHelper().saveListe(naleTF.text)
        updateListe()
    }

    
    
}

