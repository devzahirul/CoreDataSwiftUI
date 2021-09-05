//
//  ContentView.swift
//  CoreDataSwiftUI
//
//  Created by Islam Md. Zahirul on 4/9/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        MainView()
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
