import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var selectedDialect: Dialect = .connacht
    @State private var selectedPronoun: PrepositionalPronoun = .as_
    @State private var selectedMode: Mode = .recognition

    enum Mode: String, CaseIterable, Identifiable {
        case recognition = "Recognition"
        case production = "Production"
        
        var id: String { self.rawValue }
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Select Dialect")) {
                    Picker("Dialect", selection: $selectedDialect) {
                        ForEach(Dialect.allCases) { dialect in
                            Text(dialect.rawValue).tag(dialect)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Select Prepositional Pronoun")) {
                    Picker("Pronoun", selection: $selectedPronoun) {
                        ForEach(PrepositionalPronoun.allCases) { pronoun in
                            Text(pronoun.rawValue).tag(pronoun)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                
                Section(header: Text("Select Mode")) {
                    Picker("Mode", selection: $selectedMode) {
                        ForEach(Mode.allCases) { mode in
                            Text(mode.rawValue).tag(mode)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                NavigationLink(
                    destination: ModeDestinationView(mode: selectedMode, dialect: selectedDialect, pronoun: selectedPronoun)
                ) {
                    Text("Start")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationTitle("Irish Pronouns")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
