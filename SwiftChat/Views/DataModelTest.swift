//
//  DataModelTest.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/30
//  
//

import SwiftUI

struct DataModelTest: View {
    let user1 = User(id: "1", name: "test user", image: "user02")

    let message = Message(
        text: "Hello!!",
        user: User(id: "1", name: "test user", image: "user02"),
        date: Date(),
        readed: true
    )

    var body: some View {
        Text(user1.name)
        Image(user1.image)

        Text(message.text)
    }
}

#Preview {
    DataModelTest()
}
