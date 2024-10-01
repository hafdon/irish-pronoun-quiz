// AudioPracticeView.swift

import SwiftUI

struct AudioPracticeView: View {
    let dialect: Dialect
    
    @StateObject private var audioPlayer = AudioPlayer()
    @State private var showErrorAlert: Bool = false
    
    @State private var currentPronounForm: PronounForm?
    @State private var showForm: Bool = false
    @State private var showMeaning: Bool = false
    
    // Fetch all pronoun forms regardless of preposition
    let pronounForms: [PronounForm]
    
    init(dialect: Dialect) {
        self.dialect = dialect
        self.pronounForms = DataProvider.getAllPronounForms(dialect: dialect) // Modify as per your data provider
    }
    
    var body: some View {
        VStack(spacing: 30) {
            if let form = currentPronounForm {
                VStack(spacing: 20) {
                    // Play Audio Button
                    Button(action: {
                        audioPlayer.playAudio(named: form.audioFileName.rawValue)
                    }) {
                        Image(systemName: "speaker.wave.2.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.blue)
                    }
                    .accessibilityLabel("Play audio for \(form.meaning)")
                    
                    // Reveal Form and Meaning Buttons
                    HStack(spacing: 20) {
                        Button(action: {
                            withAnimation {
                                showForm = true
                            }
                        }) {
                            Text("Reveal Form")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .disabled(showForm)
                        .accessibilityLabel("Reveal form")
                        
                        Button(action: {
                            withAnimation {
                                showMeaning = true
                            }
                        }) {
                            Text("Reveal Meaning")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .disabled(showMeaning)
                        .accessibilityLabel("Reveal meaning")
                    }
                    
                    // Display Revealed Information
                    VStack(alignment: .leading, spacing: 10) {
                        if showForm {
                            Text("Form: \(form.form) (\(form.preposition))")
                                .font(.headline)
                                .transition(.opacity)
                        }
                        
                        if showMeaning {
                            Text("Meaning: \(form.meaning)")
                                .font(.subheadline)
                                .transition(.opacity)
                        }
                    }
                    .padding()
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                    
                    // Next Button
                    Button(action: loadRandomForm) {
                        Text("Next")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .accessibilityLabel("Load another random form")
                }
                .padding()
                .background(Color(UIColor.systemBackground))
                .cornerRadius(15)
                .shadow(radius: 5)
                .transition(.slide)
            } else {
                Text("No pronoun forms available.")
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Audio Practice")
        .alert(isPresented: $showErrorAlert) {
            Alert(title: Text("Audio Playback Error"),
                  message: Text(audioPlayer.errorMessage ?? "Unknown error."),
                  dismissButton: .default(Text("OK")))
        }
        .onAppear {
            loadRandomForm()
        }
        .onReceive(audioPlayer.$errorMessage) { errorMessage in
            if errorMessage != nil {
                showErrorAlert = true
            }
        }
    }
    
    // Function to load a random pronoun form
    func loadRandomForm() {
        guard !pronounForms.isEmpty else {
            currentPronounForm = nil
            return
        }
        
        currentPronounForm = pronounForms.randomElement()
        showForm = false
        showMeaning = false
        audioPlayer.stop() // Stop any ongoing audio if necessary
    }
}

struct AudioPracticeView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPracticeView(dialect: .connacht)
    }
}
