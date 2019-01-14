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
    @IBOutlet weak var  holderView : UIView!
    @IBOutlet weak var  naleTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    // mes actions
    
    @IBAction func addListe(_ sender:UIButton) {
        CoreDataHelper().saveListe(naleTF.text)
        
    }
}

