//
//  ListView.swift
//  SwiftChat
//  
//  Created by katz0726 on 2024/03/31
//  
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            VStack {
                header

                // List
                list
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ListView()
}

extension ListView {
    private var header: some View {
        HStack {
            Text("トーク")
                .font(.title2.bold())

            Spacer()

            HStack(spacing: 16) {
                Image(systemName: "text.badge.checkmark")
                Image(systemName: "square")
                Image(systemName: "ellipse.bubble")
            }
            .font(.title2)
        }
    }

    private var list: some View {
        ScrollView {
            VStack {
                ForEach(0..<5) { _ in
                    NavigationLink {
                        ChatView()
                            .toolbar(.hidden)
                    } label: {
                        listRow
                    }
                }
            }
        }
    }

    private var listRow: some View {
        HStack {
            Image("user01")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            VStack {
                Text("タイトル")
                    .foregroundColor(.primary)
                Text("最近のメッセージ")
                    .font(.footnote)
                    .foregroundColor(Color(uiColor: .secondaryLabel))
            }
            Spacer()
            Text("12/31")
                .font(.caption)
                .foregroundColor(Color(uiColor: .secondaryLabel))
        }
    }
}
