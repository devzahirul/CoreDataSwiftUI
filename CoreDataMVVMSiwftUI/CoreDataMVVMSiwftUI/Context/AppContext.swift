//
//  AppContext.swift
//  CoreDataMVVMSiwftUI
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import CoreData


protocol AppContextProtocol {
    var viewContext: NSManagedObjectContext { get }
}


struct AppContext: AppContextProtocol {
    var viewContext: NSManagedObjectContext {
        return PersistenceController.shared.container.viewContext
    }
    
    
}
