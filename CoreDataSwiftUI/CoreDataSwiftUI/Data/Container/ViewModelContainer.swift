//
//  ViewModelContainer.swift
//  CoreDataSwiftUI
//
//  Created by Islam Md. Zahirul on 5/9/21.
//

import Foundation

class ViewModelContainers {
    static let postContainer = PostContainer()
}

class PostContainer {
    let postViewModel = ViewModelFactory.postViewModel
    let postCreateViewModel = ViewModelFactory.postCreateViewModel
}
