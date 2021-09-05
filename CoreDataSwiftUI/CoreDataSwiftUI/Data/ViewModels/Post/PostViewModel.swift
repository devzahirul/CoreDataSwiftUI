//
//  PostViewModel.swift
//  CoreDataSwiftUI
//
//  Created by Islam Md. Zahirul on 5/9/21.
//

import Foundation
import CoreData


enum Resource<T> {
    case loading
    case success(T)
    case error(Error)
}


protocol ViewModel: ObservableObject {
    associatedtype ResourceType
    var resource: Resource<ResourceType> {get}
    func fetch()
}

class FCARNetworkVM<Response: Decodable>: ViewModel {
    typealias ResourceType = Response
    
    var resource: Resource<Response> = .loading
    
    func fetch() {
        
    }
}



class FACRCoreDataViewModel<CoreDataEntity: NSManagedObject>: ViewModel {
    typealias ResourceType = CoreDataEntity
    
    var resource: Resource<CoreDataEntity> = .loading
    
    func fetch() {
        
    }
}




class PostViewModel: ObservableObject {
    
}


extension ViewModelFactory {
    static let postViewModel = PostViewModel()
}
