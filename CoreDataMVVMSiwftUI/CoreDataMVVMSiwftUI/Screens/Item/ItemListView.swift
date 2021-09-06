//
//  ItemListView.swift
//  CoreDataMVVMSiwftUI
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI
import CoreData

struct ItemListView: View {
    @Environment(\.appContext) private var appContext

    private var viewContext: NSManagedObjectContext {
        return appContext.viewContext
    }
    
    private var itemContainer: ItemViewModelContainer {
        return appContext.itemViewModelContainer
    }
    
    @FetchRequest(
        entity: Item.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        List {
            ForEach(items) { item in
                Text("Item at \(item.timestamp!, formatter: itemFormatter)")
            }
            .onDelete(perform: { indexSet in
                itemContainer.itemViewModel.delete(items, offsets: indexSet)
            })
        }
        .toolbar {
            HStack {
            #if os(iOS)
            EditButton()
            #endif

                Button(action: itemContainer.itemViewModel.addItem) {
                Label("Add Item", systemImage: "plus")
            }
            }
        }
    }

   
}



struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
