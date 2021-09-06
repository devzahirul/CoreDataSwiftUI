//
//  ContentView.swift
//  CoreDataMVVMSiwftUI
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    //MARK:- UI
    var body: some View {
        NavigationView {
            ItemListView()
                .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
