//
//  CoreDataHelper.swift
//  Codata
//
//  Created by Macinstosh on 14/01/2019.
//  Copyright © 2019 ozvassilius. All rights reserved.
//

import UIKit
import CoreData


class CoreDataHelper {
    
    // Recuperer base CoreData
    private let appDel = UIApplication.shared.delegate as! AppDelegate
    
    // Recuperer le contexte
    var context : NSManagedObjectContext {
        return appDel.persistentContainer.viewContext
    }
    
    // Sauvegarder dans CoreData
    func save () {
        appDel.saveContext()
    }
    
    // Sauvegarder dans CoreData
    func saveListe(_ string : String?) {
        // on verifie qu'on a recup un texte et qu'il n'est pas vide
        guard let texte = string, texte != "" else {return}
        
        // on recupere l'Entity "Liste" créé depuis le xcdatamodeld ! et on lui ajoute le contexte qui a ete récupéré dans CoreDataHelper (qui vient a la base de AppDelegate)
        let nouvelleListe = Liste(context: context)
        nouvelleListe.date = Date() // avec ca on recupere la date actuelle du device
        nouvelleListe.name = texte // on recup le texte du UITextfield
        save()
        print("liste sauvegardé")
    }
    
    // Logique ENTITY Liste
    
}
