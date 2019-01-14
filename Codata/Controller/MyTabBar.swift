//
//  MyTabBar.swift
//  Codata
//
//  Created by Macinstosh on 14/01/2019.
//  Copyright © 2019 ozvassilius. All rights reserved.
//

import UIKit

class MyTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // changer la couleur des boutons selectionnés ou non
        tabBar.tintColor = .darkGray
        tabBar.unselectedItemTintColor  = .lightGray
        
        // changer le background de la tabbar entiere
        // tabBar.barTintColor = .yellow
        
        // tabBar transparent
        tabBar.barTintColor = .clear // en juste clear on l'a en noir
        tabBar.backgroundImage = UIImage() // la ca marche
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
