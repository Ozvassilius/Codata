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
        let formatter = DateFormatter()
        let calendar = Calendar.current
        
        if calendar.isDateInToday(self) {
            formatter.timeStyle = .short
            formatter.dateStyle = .none
        } else {
            formatter.dateStyle = .medium
            formatter.timeStyle = .none
            
        }
        
        return formatter.string(from: self)
    }
    
}
