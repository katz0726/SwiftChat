//
//  Chat.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/30
//  
//

import Foundation

struct Chat: Decodable, Identifiable {
    let id: String
    let messages: [Message]
}
