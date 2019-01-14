//
//  Extensions.swift
//  Codata
//
//  Created by Macinstosh on 14/01/2019.
//  Copyright © 2019 ozvassilius. All rights reserved.
//

import Foundation

extension Date {
    
    func toString() -> String {
        
        let formatteur : DateFormatter = DateFormatter()
        formatteur.dateStyle = .medium
        formatteur.timeStyle = .short
        return formatteur.string(from: self) // self etant donné qu'on est en une extension
        
       
    }
    
}

