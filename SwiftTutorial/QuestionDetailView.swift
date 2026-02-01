//
//  QuestionDetailView.swift
//  SwiftTutorial
//
//  Created by dev on 30/01/2026.
//

import SwiftUI

struct QuestionDetailView: View {
    let topic: Topic
    @State private var currentQuestion: Question?
    @State private var shownQuestionIds: Set<UUID> = []
    @State private var selectedQuestionId: UUID?
    
    var body: some View {
        VStack(spacing: 0) {
            // Таблица с вопросами и ответами
            List {
                // Текущий вопрос
                if let question = currentQuestion {
                    Section {
                        VStack(alignment: .leading, spacing: 8) {
                            Text(question.text)
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(.primary)
                        }
                        .padding(.vertical, 8)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            withAnimation {
                                if selectedQuestionId == question.id {
                                    selectedQuestionId = nil
                                } else {
                                    selectedQuestionId = question.id
                                }
                            }
                        }
                        
                        // Ответ на выбранный вопрос
                        if selectedQuestionId == question.id {
                            VStack(alignment: .leading, spacing: 8) {
                                Divider()
                                    .padding(.vertical, 4)
                                Text(question.answer)
                                    .font(.body)
                                    .foregroundColor(.secondary)
                            }
                            .padding(.vertical, 8)
                            .transition(.opacity.combined(with: .move(edge: .top)))
                        }
                    } header: {
                        Text("Текущий вопрос")
                    }
                } else {
                    Section {
                        Text("Нажмите 'Следующий вопрос' чтобы начать")
                            .font(.body)
                            .foregroundColor(.secondary)
                            .padding(.vertical, 8)
                    }
                }
            }
            .listStyle(.insetGrouped)
            
            // Кнопка "Следующий вопрос"
            VStack {
                Button(action: nextQuestion) {
                    HStack {
                        Image(systemName: "arrow.right.circle.fill")
                        Text("Следующий вопрос")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(canGetNextQuestion ? Color.blue : Color.gray)
                    .cornerRadius(12)
                }
                .disabled(!canGetNextQuestion)
            }
            .padding()
            .background(Color(.systemGroupedBackground))
        }
        .navigationTitle(topic.name)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            if currentQuestion == nil {
                nextQuestion()
            }
        }
    }
    
    private var canGetNextQuestion: Bool {
        shownQuestionIds.count < topic.questions.count
    }
    
    private func nextQuestion() {
        guard canGetNextQuestion else { return }
        
        // Получаем список не показанных вопросов
        let availableQuestions = topic.questions.filter { !shownQuestionIds.contains($0.id) }
        
        // Выбираем случайный вопрос
        if let randomQuestion = availableQuestions.randomElement() {
            withAnimation {
                currentQuestion = randomQuestion
                selectedQuestionId = nil
            }
            shownQuestionIds.insert(randomQuestion.id)
        }
    }
}

#Preview {
    NavigationView {
        QuestionDetailView(topic: MockData.shared.topics[0])
    }
}
