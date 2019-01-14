//
//  AddArticleController.swift
//  Codata
//
//  Created by Macinstosh on 14/01/2019.
//  Copyright © 2019 ozvassilius. All rights reserved.
//

import UIKit

class AddArticleController: UIViewController {
    
    var liste : Liste!

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var shopTF: UITextField!
    @IBOutlet weak var priceTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addArticleAction(_ sender: Any) {
    }
    
    @IBAction func camera(_ sender: Any) {
    }
    
    @IBAction func pictureGallery(_ sender: Any) {
    }
    
}
