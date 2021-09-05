//
//  CoreDataSwiftUIApp.swift
//  CoreDataSwiftUI
//
//  Created by Islam Md. Zahirul on 4/9/21.
//

import SwiftUI

@main
struct CoreDataSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
