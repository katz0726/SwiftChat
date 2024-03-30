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

    var body: some View {
        Text(user1.name)
        Image(user1.image)
    }
}

#Preview {
    DataModelTest()
}
