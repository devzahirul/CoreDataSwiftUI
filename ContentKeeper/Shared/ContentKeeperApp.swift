//
//  ContentKeeperApp.swift
//  Shared
//
//  Created by Islam Md. Zahirul on 5/9/21.
//

import SwiftUI

@main
struct ContentKeeperApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
