// AudioPracticeView.swift

import SwiftUI

struct AudioPracticeView: View {
    let dialect: Dialect
    
    @StateObject private var audioPlayer = AudioPlayer()
    @State private var showErrorAlert: Bool = false
    @State private var revealAnswers: [UUID: Bool] = [:] // Track which answers are revealed
    
    // Fetch all pronoun forms regardless of preposition
    let pronounForms: [PronounForm]
    
    init(dialect: Dialect) {
        self.dialect = dialect
        self.pronounForms = DataProvider.getAllPronounForms(dialect: dialect) // Modify as per your data provider
    }
    
    var body: some View {
        VStack {
            List(pronounForms) { form in
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text(form.meaning)
                            .font(.headline)
                        
                        Spacer()
                        
                        Button(action: {
                            audioPlayer.playAudio(named: form.audioFileName.rawValue)
                        }) {
                            Image(systemName: "speaker.wave.2.fill")
                                .foregroundColor(.blue)
                        }
                        .buttonStyle(BorderlessButtonStyle()) // Prevents row selection interference
                        .accessibilityLabel("Play audio for \(form.meaning)")
                    }
                    
                    if revealAnswers[form.id] == true {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Form: \(form.form)")
                                .font(.subheadline)
                            Text("Meaning: \(form.meaning)")
                                .font(.subheadline)
                        }
                        .transition(.opacity)
                    }
                }
                .padding(.vertical, 5)
                .animation(.easeInOut, value: revealAnswers[form.id])
            }
            
            Button(action: revealAllAnswers) {
                Text("Reveal All Answers")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            .accessibilityLabel("Reveal all answers")
        }
        .navigationTitle("Audio Practice")
        .alert(isPresented: $showErrorAlert) {
            Alert(title: Text("Audio Playback Error"),
                  message: Text(audioPlayer.errorMessage ?? "Unknown error."),
                  dismissButton: .default(Text("OK")))
        }
        .onReceive(audioPlayer.$errorMessage) { errorMessage in
            if errorMessage != nil {
                showErrorAlert = true
            }
        }
    }
    
    // Function to reveal all answers
    func revealAllAnswers() {
        for form in pronounForms {
            revealAnswers[form.id] = true
        }
    }
}

struct AudioPracticeView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPracticeView(dialect: .connacht)
    }
}
