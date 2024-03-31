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
    var messages: [Message]

    // fetch recent message from message array
    var recentMessageText: String {
        guard let recentMessage = self.messages.last else { return "" }

        return recentMessage.text
    }

    // format resent message date
    var recentMessageDateString: String {
        guard let recentMessage = self.messages.last else { return "" }

        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

        guard let date = formatter.date(from: recentMessage.date) else { return "" }
        formatter.dateFormat = "MM/dd"

        return formatter.string(from: date)
    }

}
