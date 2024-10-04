//
//  PrepositionalPronoun.swift
//  IrishPronounQuiz
//
//  Created by starkat on 10/4/24.
//
import Foundation

// Prepositional Pronoun Enum
enum PrepositionalPronoun: String, CaseIterable, Identifiable {
    case ag_ = "ag"
    case as_ = "as"
    case ar = "ar"
    case do_ = "do"
    case de = "de"
    case le = "le"
    case faoi = "faoi"
    case i = "i"
    case ó = "ó"
    case idir = "idir"
    
    var id: String { self.rawValue }
}
