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
        self.id == "1"
    }
}
