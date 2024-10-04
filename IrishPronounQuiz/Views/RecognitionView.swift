// RecognitionView.swift

import SwiftUI

struct RecognitionView: View {
    let dialect: Dialect
    let pronoun: PrepositionalPronoun // relevant keys: "meaning" (English), "form" (Irish)
    @State private var currentQuestion: PronounForm?
    
    @State private var selectedMeaning: String = "" // User's selected meaning (English of item they click on)
    @State private var showAnswer: Bool = false // Flag for when to show answer
    @StateObject var audioPlayer = AudioPlayer()
    @State private var showErrorAlert: Bool = false
    @State private var showSpelling: Bool = true // 1a. New State Variable
    @State private var shuffledPronounForms: [PronounForm] = [] // Updated State Variable
    @Namespace private var animationNamespace // For 1b. Visual Transition

    let pronounForms: [PronounForm]

    init(dialect: Dialect, pronoun: PrepositionalPronoun) {
        self.dialect = dialect
        self.pronoun = pronoun
        self.pronounForms = DataProvider.getPronounForms(dialect: dialect, preposition: pronoun)
    }

    var body: some View {
        VStack {
            
            // 1a. Toggle for showing/hiding spelling
            Toggle(isOn: $showSpelling) {
                Text("Show Spelling")
            }
            .padding()

            if let question = currentQuestion {
                // 1b. Visual Transition using matched geometry
                VStack {

                    // 1c. Make selection submit the answer
                    List {
                        ForEach(shuffledPronounForms, id: \.id) { form in // Ensure PronounForm conforms to Identifiable
                            HStack {
                                Text(form.meaning)
                                
                                Spacer()
                                
                                if form.meaning == selectedMeaning && showAnswer {
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.blue)
                                }
                                
                                if showAnswer {
                                    
                                    if showSpelling {
                                        Text("(\(form.form))")
                                    }
                                    
                                    Button(action: {
                                        // Updated method call with subdirectory and resource name
                                        audioPlayer.playAudio(subdirectory: form.audioSubdirectory, resourceName: form.audioResourceName)
                                        
                                    }) {
                                        Image(systemName: "speaker.wave.2.fill")
                                            .foregroundColor(.blue)
                                    }
                                    .buttonStyle(BorderlessButtonStyle()) // Ensures the button doesn't interfere with row selection
                                }
                                
                                
                            }
                            .contentShape(Rectangle())
                            .onTapGesture {
                                if !showAnswer { // Allow selection only if answer hasn't been shown yet
                                    submitAnswer(selected: form.meaning, for: question)
                                }
                            }
                            .animation(.easeInOut, value: selectedMeaning)
                        }
                    }
                    .listStyle(PlainListStyle()) // Optional: Customize list appearance
                    
                    if showSpelling {
                        Text("Spelling: \(question.form)")
                            .font(.subheadline)
                            .padding(.bottom, 5)
                            .transition(.opacity) // Fade in/out
                    }

                    if showAnswer {
                        if selectedMeaning.lowercased() == question.meaning.lowercased() {
                            HStack {
                                Image(systemName: "checkmark.circle")
                                    .foregroundColor(.green)
                                Text("Correct!")
                                    .foregroundColor(.green)
                            }
                            .padding(.bottom, 2)


                        } else {
                            HStack {
                                Image(systemName: "xmark.circle")
                                    .foregroundColor(.red)
                                Text("Incorrect! Correct meaning: \(question.meaning)")
                                    .foregroundColor(.red)
                            }
                            .padding(.bottom, 2)
                            
                        }
                        
                        Button("Next") {
                            loadNextQuestion()
                            showAnswer = false
                            selectedMeaning = ""
                        }
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .accessibilityLabel("Next")
                    }
                    
                    Button(action: {
                        // Updated method call with subdirectory and resource name
                        audioPlayer.playAudio(subdirectory: question.audioSubdirectory, resourceName: question.audioResourceName)
                    }) {
                        Text("Play Audio")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding(.bottom, 10)
                    .accessibilityLabel("Play the pronunciation audio")

                    Spacer()
                }
                .padding()
                .transition(.slide) // 1b. Visual Transition
            } else {
                Button("Start Recognition") {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        loadNextQuestion()
                    }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .transition(.scale)
                .accessibilityLabel("Start Recognition")
            }
        }
        .navigationTitle("Recognition Mode")
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

    // 1c. Submit answer upon selection
    func submitAnswer(selected: String, for question: PronounForm) {
        selectedMeaning = selected
        showAnswer = true

        if selected.lowercased() == question.meaning.lowercased() {
            // Correct answer logic (if any)
        } else {
            // Incorrect answer logic (if any)
        }
    }

    func loadNextQuestion() {
        if !pronounForms.isEmpty {
            currentQuestion = pronounForms.randomElement()
            selectedMeaning = ""
            showAnswer = false
            
            // Shuffle the PronounForms directly
            if let question = currentQuestion {
                shuffledPronounForms = pronounForms.shuffled()
                
                // Ensure the current question is included in shuffledPronounForms
                if !shuffledPronounForms.contains(where: { $0.id == question.id }) {
                    shuffledPronounForms.append(question)
                }
                
                // Optionally, shuffle again to mix the current question into the list
                shuffledPronounForms.shuffle()
                
                // 1d. Play audio automatically
                audioPlayer.playAudio(subdirectory: question.audioSubdirectory, resourceName: question.audioResourceName)
            }
        }
    }
}

// Extension to map optional String to Binding<Bool> for alert presentation
extension Optional where Wrapped == String {
    var map: Binding<Bool> {
        Binding<Bool>(
            get: { self != nil },
            set: { _ in }
        )
    }
}
