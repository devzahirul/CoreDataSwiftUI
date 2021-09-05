//
//  PostView.swift
//  CoreDataSwiftUI
//
//  Created by Islam Md. Zahirul on 5/9/21.
//

import SwiftUI

struct PostView: View {
    
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        entity:Post.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Post.title, ascending: true)],
        animation: .default) private var items: FetchedResults<Post>

    //ViewModelContainer
    var container: PostContainer {
        return ViewModelContainers.postContainer
    }
    
    //MARK:- UI
    var body: some View {
        List {
            ForEach(items) { item in
                VStack(alignment: .leading) {
                Text("\(item.title ?? "")")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(item.content ?? "")
                        .font(.subheadline)
                }
                
            }
            .onDelete(perform: container.postCreateViewModel.deleteItems)
        }
        .toolbar {
            #if os(iOS)
            EditButton()
            #endif

            Button(action: container.postCreateViewModel.addItem) {
                Label("Add Item", systemImage: "plus")
            }
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        PostView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
