//
//  TopicsListView.swift
//  SwiftTutorial
//
//  Created by dev on 30/01/2026.
//

import SwiftUI

struct TopicsListView: View {
    let topics = MockData.shared.topics
    
    var body: some View {
        NavigationView {
            List(topics) { topic in
                NavigationLink(destination: QuestionDetailView(topic: topic)) {
                    HStack {
                        Image(systemName: "book.fill")
                            .foregroundColor(.blue)
                            .font(.title2)
                        VStack(alignment: .leading, spacing: 1) {
                            Text(topic.name)
                                .font(.headline)
                            Text("\(topic.questions.count) вопросов")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                    }
                    .padding(.vertical, 1)
                }
            }
            .navigationTitle("Swift tutorial")
        }
    }
}

#Preview {
    TopicsListView()
}
