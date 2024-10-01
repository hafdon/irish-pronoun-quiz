import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var selectedDialect: Dialect = .connacht
    @State private var selectedPronoun: PrepositionalPronoun = .as_
    @State private var selectedMode: Mode = .recognition

    enum Mode: String, CaseIterable, Identifiable {
        case recognition = "Recognition"
        case production = "Production"
        case audioPractice = "Blitz"
        
        var id: String { self.rawValue }
    }

    var body: some View {
        NavigationView {
            Form {
                
                // First picker: tripartite button thing
                Section(header: Text("Select Dialect")) {
                    // Conacht | Munster | Ulster
                    Picker("Dialect", selection: $selectedDialect) {
                        ForEach(Dialect.allCases) { dialect in
                            Text(dialect.rawValue).tag(dialect)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                // Second picker: Dropdown
                Section(header: Text("Select Prepositional Pronoun")) {
                    Picker("Pronoun", selection: $selectedPronoun) {
                        ForEach(PrepositionalPronoun.allCases) { pronoun in
                            Text(pronoun.rawValue).tag(pronoun)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                
                // Third picker: Mode selection : partitioned button thing
                Section(header: Text("Select Mode")) {
                    Picker("Mode", selection: $selectedMode) {
                        ForEach(Mode.allCases) { mode in
                            Text(mode.rawValue).tag(mode)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                // Start button
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
