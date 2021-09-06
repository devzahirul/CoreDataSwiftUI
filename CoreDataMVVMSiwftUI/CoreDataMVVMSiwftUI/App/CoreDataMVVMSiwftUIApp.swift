//
//  CoreDataMVVMSiwftUIApp.swift
//  CoreDataMVVMSiwftUI
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI

@main
struct CoreDataMVVMSiwftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
