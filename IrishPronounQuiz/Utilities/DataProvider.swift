// DataProvider.swift

import Foundation

struct DataProvider {
    static func getAllPronounForms(dialect: Dialect) -> [PronounForm] {
        return PronounFormRepository.allPronounForms.filter { $0.dialect == dialect }
    }
    
    static func getPronounForms(dialect: Dialect, preposition: PrepositionalPronoun? = nil) -> [PronounForm] {
        return PronounFormRepository.allPronounForms.filter { pronounForm in
            let dialectMatches = pronounForm.dialect == dialect
            let prepositionMatches = preposition == nil || pronounForm.preposition == preposition
            return dialectMatches && prepositionMatches
        }
    }
}
