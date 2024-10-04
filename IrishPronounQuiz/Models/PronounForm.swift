// PronounForm.swift

import Foundation

struct PronounForm: Identifiable, Hashable {
    let id = UUID()
    let dialect: Dialect
    let preposition: PrepositionalPronoun
    let meaning: String
    let form: String
    let audioFileName: AudioFile
    
    // Computed properties to separate subdirectory and resource name
    var audioSubdirectory: String {
        dialect.rawValue
    }
    
    var audioResourceName: String {
        audioFileName.rawValue
    }
}
