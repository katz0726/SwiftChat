//
//  User.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/30
//  
//

import Foundation

struct User: Decodable {
    let id: String
    let name: String
    let image: String

    var isCurrentUser: Bool {
        self.id == User.currentUser.id
    }

    static var currentUser: User {
        User(id: "1", name: "katz0726", image: "user01")
    }
}
