import SwiftUI

struct ModeDestinationView: View {
    let mode: ContentView.Mode
    let dialect: Dialect
    let pronoun: PrepositionalPronoun

    var body: some View {
        switch mode {
        case .recognition:
            RecognitionView(dialect: dialect, pronoun: pronoun)
        case .production:
            ProductionView(dialect: dialect, pronoun: pronoun)
        }
    }
}

struct ModeDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        ModeDestinationView(mode: .recognition, dialect: .connacht, pronoun: .as_)
    }
}
