//
//  PostCreateViewModel.swift
//  CoreDataSwiftUI
//
//  Created by Islam Md. Zahirul on 5/9/21.
//

import Foundation
import CoreData

class PostCreateViewModel: ObservableObject {
    
    var viewContext: NSManagedObjectContext
    
    init(_ context: NSManagedObjectContext) {
        self.viewContext = context
    }
    
    public func addItem() {
        
            let newItem = Post(context: viewContext)
            newItem.title = "\(Date())"

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        
    }

    public func deleteItems(offsets: IndexSet) {
       
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
        
    }
}


extension ViewModelFactory {
    static let postCreateViewModel = PostCreateViewModel(PersistenceController.shared.container.viewContext)
}
