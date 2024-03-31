//
//  ChatViewModel.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/30
//  
//

import Foundation

class ChatViewModel: ObservableObject {

    @Published var chatData: [Chat] = []

    init() {
        chatData = fetchChatData()
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

    func addMessage(chatId: String, text: String) {
        guard let index = chatData.firstIndex(where: { chat in
            chat.id == chatId
        }) else { return }

        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let formattedDateString = formatter.string(from: Date())

        let newMessage = Message(
            id: UUID().uuidString,
            text: text,
            user: User.currentUser,
            date: formattedDateString,
            readed: false
        )

        chatData[index].messages.append(newMessage)
    }

    func getTitle(messages: [Message]) -> String {
        var title = ""
        var userIds: [String] = []

        for message in messages {
            let id = message.user.id


            // 自分のIDの場合、またはIDが重複する場合はスキップ
            if  User.currentUser.id == id || userIds.contains(id) { continue }

            userIds.append(id)
            let name = message.user.name
            title += title.isEmpty ? "\(name)" : ", \(name)"
        }

        return title
    }
}
