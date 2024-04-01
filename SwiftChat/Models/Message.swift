//
//  Message.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/30
//  
//

import Foundation

struct Message: Decodable, Identifiable, Equatable {
    static func == (lhs: Message, rhs: Message) -> Bool {
        return lhs.id == rhs.id
    }

    let id: String
    let text: String
    let user: User
    let date: String
    let readed: Bool
}
