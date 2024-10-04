// PronounFormRepository.swift

import Foundation

struct PronounFormRepository {
    // Static array of all pronoun forms across dialects
    static let allPronounForms: [PronounForm] = Dialect.allCases.flatMap { dialect in
        basePronounForms.map { baseForm in
            PronounForm(
                dialect: dialect,
                preposition: baseForm.preposition,
                meaning: baseForm.meaning,
                form: baseForm.form,
                audioFileName: baseForm.audioFileName
            )
        }
    }
}
