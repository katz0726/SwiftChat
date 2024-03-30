//
//  ChatViewModel.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/30
//  
//

import Foundation

class ChatViewModel {

    var chatData: [Chat] = []
    var messages: [Message] = []

    init() {
        chatData = fetchChatData()
        messages = chatData[0].messages
    }

    private func fetchChatData() -> [Chat] {
        let fileName = "chatData.json"
        let data: Data

        guard let filePath = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            fatalError("\(fileName) is not found.")
        }

        do {
            data = try Data(contentsOf: filePath)
        } catch {
            print("Error: \(error)")
            fatalError("Failed to load \(fileName).")
        }

        do {
            print(data)
            return try JSONDecoder().decode([Chat].self, from: data)
        } catch {
            print("Error: \(error)")
            fatalError("Failed to convert \(fileName) to \(Chat.self).")
        }
    }
}
