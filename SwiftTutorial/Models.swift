//
//  Models.swift
//  SwiftTutorial
//
//  Created by dev on 30/01/2026.
//

import Foundation

struct Topic: Identifiable {
    let id: UUID
    let name: String
    let questions: [Question]
}

struct Question: Identifiable {
    let id: UUID
    let text: String
    let answer: String
}
