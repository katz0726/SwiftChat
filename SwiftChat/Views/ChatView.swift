//
//  ChatView.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/29
//  
//

import SwiftUI

struct ChatView: View {
    @State private var textFieldText: String = ""

    let vm: ChatViewModel = ChatViewModel()
    var body: some View {
        VStack(spacing: 0) {
            // Message Area
            messageArea
            .overlay(navigationArea, alignment: .top)

            // Input Area
            inputArea
        }
    }
}

#Preview {
    ChatView()
}

extension ChatView {
    private var messageArea: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(vm.messages) { message in
                    MessageRow(message: message)
                }
            }
            .padding(.horizontal)
            .padding(.top, 72)
        }
        .background(Color("Background"))
    }

    private var navigationArea: some View {
        HStack {
            Image(systemName: "chevron.backward")
                .font(.title2)
            Text("Title")
                .font(.title2.bold())
            Spacer()
            HStack(spacing: 16) {
                Image(systemName: "text.magnifyingglass")
                Image(systemName: "phone")
                Image(systemName: "line.3.horizontal")
            }
        }
        .padding()
        .background(Color("Background").opacity(0.9))
    }

    private var inputArea: some View {
        HStack {
            HStack {
                Image(systemName: "plus")
                Image(systemName: "camera")
                Image(systemName: "photo")
            }
            .font(.title2)
            TextField("Aa", text: $textFieldText)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .clipShape(Capsule())
                .overlay(
                    Image(systemName: "face.smiling")
                        .font(.title2)
                        .padding(.trailing)
                        .foregroundColor(.gray)

                    , alignment: .trailing
                )
            Image(systemName: "mic")
                .font(.title2)
        }
        .padding()
        .background(Color(uiColor: .systemBackground))
    }
}
