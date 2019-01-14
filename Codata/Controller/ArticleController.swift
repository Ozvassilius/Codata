//
//  ArticleController.swift
//  Codata
//
//  Created by Macinstosh on 14/01/2019.
//  Copyright © 2019 ozvassilius. All rights reserved.
//

import UIKit

class ArticleController: UIViewController {
    
    var liste : Liste!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "add", let controller = segue.destination as? AddArticleController {
            controller.liste = liste
        }
    }
   
    @IBAction func add(_ sender: Any) {
        performSegue(withIdentifier: "Add", sender: nil)
    }
}
