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
    
    // Timer for briefly showing answers before transitioning
    @State private var showAnswersTemporarily: Bool = false
    
    init(dialect: Dialect) {
        // Connacht | Munster | Ulster
        self.dialect = dialect
        // Get all pronoun forms irrespective of pronoun
        self.pronounForms = DataProvider.getAllPronounForms(dialect: dialect)
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
                    
                    // "Reveal Form" and "Reveal Meaning" Buttons
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
                            Text("Form: \(formattedForm(form))")
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
                    Button(action: nextButtonTapped) {
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
    
    // MARK: - Helper Functions
    
    /// Formats the form by removing any trailing underscores from the preposition
    func formattedForm(_ form: PronounForm) -> String {
        let cleanedPreposition = form.preposition.rawValue
        return "\(form.form) (\(cleanedPreposition))"
    }
    
    /// Handles the "Next" button tap
    func nextButtonTapped() {
        // Reveal current form and meaning
        withAnimation(.easeInOut(duration: 0.5)) {
            showForm = true
            showMeaning = true
        }
        
        // Delay loading the next form to allow the user to see the revealed answers
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { // Adjust the delay as needed
            loadRandomForm()
        }
    }
    
    /// Loads a new random pronoun form and plays its audio automatically
    func loadRandomForm() {
        guard !pronounForms.isEmpty else {
            currentPronounForm = nil
            return
        }
        
        // Select a new random form ensuring it's different from the current one
        var newForm: PronounForm?
        repeat {
            newForm = pronounForms.randomElement()
        } while pronounForms.count > 1 && newForm?.id == currentPronounForm?.id
        
        currentPronounForm = newForm
        showForm = false
        showMeaning = false
        
        // Play the audio for the new form
        if let audioName = newForm?.audioFileName.rawValue {
            audioPlayer.playAudio(named: audioName)
        }
    }
}

struct AudioPracticeView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPracticeView(dialect: .connacht)
    }
}
