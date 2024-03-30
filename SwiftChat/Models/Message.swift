//
//  Message.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/30
//  
//

import Foundation

struct Message: Decodable {
    let id: String
    let text: String
    let user: User
    let date: String
    let readed: Bool
}
