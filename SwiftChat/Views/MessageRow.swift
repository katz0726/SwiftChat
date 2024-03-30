//
//  MessageRow.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/29
//  
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 48, height: 48)
            Text("こんにちは！こんにちは！こんにちは！こんにちは！こんにちは！こんにちは！こんにちは！こんにちは！こんにちは！")
                .padding()
                .background(.white)
                .cornerRadius(30)
            VStack(alignment: .trailing) {
                Text("既読")
                Text(formattedDataString)
            }
            .foregroundColor(.secondary)
            .font(.footnote)
            Spacer()
        }
        .padding(.bottom)
    }

    private var formattedDataString: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short

        return formatter.string(from: Date())
    }
}

#Preview {
    MessageRow()
}
