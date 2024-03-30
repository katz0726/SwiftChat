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
            userThumb

            messageText

            messageState
            Spacer()
        }
        .padding(.bottom)
    }
}

#Preview {
    MessageRow()
        .background(.cyan)
}

extension MessageRow {
    private var userThumb: some View {
        Image("user01")
            .resizable()
            .frame(width: 48, height: 48)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }

    private var messageText: some View {
        Text("こんにちは！")
            .padding()
            .background(.white)
            .cornerRadius(30)
    }

    private var messageState: some View {
        VStack(alignment: .trailing) {
            Text("既読")
            Text(formattedDataString)
        }
        .foregroundColor(.secondary)
        .font(.footnote)
    }

    private var formattedDataString: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short

        return formatter.string(from: Date())
    }
}
