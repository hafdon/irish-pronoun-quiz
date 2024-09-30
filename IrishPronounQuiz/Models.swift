import Foundation

// Dialect Enum
enum Dialect: String, CaseIterable, Identifiable {
    case connacht = "Connacht"
    case munster = "Munster"
    case ulster = "Ulster"
    
    var id: String { self.rawValue }
}

// Prepositional Pronoun Enum
enum PrepositionalPronoun: String, CaseIterable, Identifiable {
    case as_ = "as"
    case ar = "ar"
    case do_ = "do"
    case de = "de"
    case le = "le"
    case faoi = "faoi"
    case i = "i"
    case ó = "ó"
    
    var id: String { self.rawValue }
}

// Pronoun Form Struct
struct PronounForm: Identifiable {
    let id = UUID()
    let meaning: String
    let form: String
    let audioFileName: String // Name of the audio file without extension
}

// Sample Data
struct DataProvider {
    static func getPronounForms(dialect: Dialect, preposition: PrepositionalPronoun) -> [PronounForm] {
        // Sample data for Connacht dialect and 'faoi' preposition
        if dialect == .connacht && preposition == .faoi {
            return [
                PronounForm(
                    meaning: "under me",
                    form: "fúm",
                    audioFileName: "faoi_fúm" // Corresponds to faoi_fum.mp3
                ),
                PronounForm(
                    meaning: "under you",
                    form: "fút",
                    audioFileName: "faoi_fút" // Corresponds to faoi_fut.mp3
                ),
                PronounForm(
                    meaning: "under him",
                    form: "faoi",
                    audioFileName: "faoi_faoi" // Corresponds to faoi_faoi.mp3
                ),
                PronounForm(
                    meaning: "under her",
                    form: "fúithi",
                    audioFileName: "faoi_fúithi" // Corresponds to faoi_fum.mp3
                ),
                PronounForm(
                    meaning: "under us",
                    form: "fúinn",
                    audioFileName: "faoi_fúinn" // Corresponds to faoi_fut.mp3
                ),
                PronounForm(
                    meaning: "under you all",
                    form: "fúibh",
                    audioFileName: "faoi_fúibh" // Corresponds to faoi_faoi.mp3
                ),
                PronounForm(
                    meaning: "under them",
                    form: "fúthu",
                    audioFileName: "faoi_fúthu" // Corresponds to faoi_faoi.mp3
                ),
                // Add more forms as needed
            ]
        }
        // Add more dialects and prepositions as needed
        return []
    }
}
