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
//                    Text("Meaning: \(question.meaning)")
//                        .font(.headline)
//                        .padding()

                    if showSpelling {
                        Text("Spelling: \(question.form)")
                            .font(.subheadline)
                            .padding(.bottom, 5)
                            .transition(.opacity) // Fade in/out
                    }

                    // 1d. Play audio automatically when question loads
                    // We'll trigger this in loadNextQuestion()

                    // 1c. Make selection submit the answer
                    List {
                        ForEach(pronounForms.map { $0.meaning }, id: \.self) { meaning in
                            HStack {
                                Text(meaning)
                                Spacer()
                                if meaning == selectedMeaning {
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.blue)
                                }
                            }
                            .contentShape(Rectangle())
                            .onTapGesture {
                                submitAnswer(selected: meaning, for: question)
                            }
                            .animation(.easeInOut, value: selectedMeaning)
                        }
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
                                Text("Incorrect! Correct form: \(question.meaning)")
                                    .foregroundColor(.red)
                            }
                            .padding(.bottom, 2)
                        }

                        Button("Next") {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                loadNextQuestion()
                            }
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
                        audioPlayer.playAudio(named: question.audioFileName.rawValue)
                    }) {
                        Text("Play Correct Audio")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding(.bottom, 10)
                    .accessibilityLabel("Play the correct pronunciation audio")

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

        if selected.lowercased() == question.form.lowercased() {
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

            // 1d. Play audio automatically
            if let question = currentQuestion {
                audioPlayer.playAudio(named: question.audioFileName.rawValue)
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
