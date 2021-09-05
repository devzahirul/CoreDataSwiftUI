//
//  MainView.swift
//  CoreDataSwiftUI
//
//  Created by Islam Md. Zahirul on 5/9/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            PostView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
