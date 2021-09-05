//
//  CreatePostView.swift
//  CoreDataSwiftUI
//
//  Created by Islam Md. Zahirul on 5/9/21.
//

import SwiftUI

struct CreatePostView: View {
    
    @State var enableLogging = false
    @State var selectedColor: [String] = ["Red"]
    @State var colors = ["Red", "Green", "Blue"]
    
    @State var title = ""
    @State var content = ""
    
    var body: some View {
        NavigationView {
        Form {
            Section(header: Text("Title")) {
            TextField("Title", text: $title)
            }
            
            Section(header: Text("Content"))  {
            TextEditor(text: $content)
            .frame(height: 90)
            }
            
            Section {
                Picker("Tags", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
            }
            
            Section {
            
            Button("Create Post") {
                //action
            }.disabled((title.isEmpty || content.isEmpty) ? true : false)
            }
        }
        
        .navigationBarTitle(Text("Create Post"))
        }
    }
}

struct CreatePostView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostView()
    }
}


/**
 
1. problem->>>>>
  -> checkIn , -> database not safe (iOS)
 ->iOS checkin sending......
 -> Android is ok
 =======================

 2.
 
 */
