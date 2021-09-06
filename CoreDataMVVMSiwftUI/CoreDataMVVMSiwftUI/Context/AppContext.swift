//
//  AppContext.swift
//  CoreDataMVVMSiwftUI
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import CoreData


protocol AppContextProtocol {
    var viewContext: NSManagedObjectContext { get }
    var itemViewModelContainer: ItemViewModelContainer { get }
}


struct AppContext: AppContextProtocol {
    var viewContext: NSManagedObjectContext {
        return PersistenceController.shared.container.viewContext
    }
    
    var itemViewModelContainer: ItemViewModelContainer {
        return ItemViewModelContainer()
    }
}


protocol ViewModelContainer {
    init()
}

struct ItemViewModelContainer: ViewModelContainer {
    let itemViewModel = AppViewModels.itemViewModel
}
