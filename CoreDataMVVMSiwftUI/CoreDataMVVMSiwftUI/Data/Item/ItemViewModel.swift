//
//  ItemViewModel.swift
//  CoreDataMVVMSiwftUI
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI
import CoreData


class ItemViewModel: ObservableObject {
    
    var managedObjectContext: NSManagedObjectContext
    
    init(_ context: NSManagedObjectContext) {
        self.managedObjectContext = context
    }
    
    func addItem() {
        
            let newItem = Item(context: managedObjectContext)
            newItem.timestamp = Date()

            do {
                try managedObjectContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        
    }

    func delete(_ items: FetchedResults<Item>, offsets: IndexSet) {
       
            offsets.map { items[$0] }.forEach(managedObjectContext.delete)

            do {
                try managedObjectContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    
}


extension AppViewModels {
    static let itemViewModel = ItemViewModel(PersistenceController.shared.container.viewContext)
}
