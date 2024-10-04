//
//  Dialect.swift
//  IrishPronounQuiz
//
//  Created by starkat on 10/4/24.
//


import Foundation

// Dialect Enum
enum Dialect: String, CaseIterable, Identifiable {
    case connacht = "Connacht"
    case munster = "Munster"
    case ulster = "Ulster"
    
    var id: String { self.rawValue }
}