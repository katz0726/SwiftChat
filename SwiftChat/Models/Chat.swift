//
//  Chat.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/30
//  
//

import Foundation

struct Chat: Decodable {
    let id: String
    let messages: [Message]
}
