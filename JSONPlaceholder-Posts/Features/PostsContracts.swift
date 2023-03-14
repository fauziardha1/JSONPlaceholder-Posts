//
//  PostsContracts.swift
//  JSONPlaceholder-Posts
//
//  Created by FauziArda on 13/03/23.
//

import Foundation

protocol PostDisplayLogicProtocol: class {
    func display()
}

protocol PostBusinessLogicProtocol: class {
    func fetchPosts()
}

protocol PostDataStoreProtocol: class {
    
}

protocol PostPresentationLogicProtocol: class {
    func presentPosts()
}
