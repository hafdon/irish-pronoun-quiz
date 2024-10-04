// ProductionView.swift

import SwiftUI

struct ProductionView: View {
    let dialect: Dialect
    let pronoun: PrepositionalPronoun
    @State private var currentQuestion: PronounForm?
    @State private var userAnswer: String = ""
    @State private var showAnswer: Bool = false
    @StateObject var audioPlayer = AudioPlayer()
    @State private var showErrorAlert: Bool = false
    @State private var showMeaning: Bool = true // 1a. New State Variable
    
    let pronounForms: [PronounForm]
    
    init(dialect: Dialect, pronoun: PrepositionalPronoun) {
        self.dialect = dialect
        self.pronoun = pronoun
        self.pronounForms = DataProvider.getPronounForms(dialect: dialect, preposition: pronoun)
    }
    
    var body: some View {
        VStack {
            
            // 1a. Toggle for showing/hiding meaning
            Toggle(isOn: $showMeaning) {
                Text("Show Meaning")
            }
            .padding()
            
            if let question = currentQuestion {
                
                if showMeaning {
                    Text("Meaning: \(question.meaning)")
                        .font(.headline)
                        .padding()
                        .transition(.opacity)
                }
                
                TextField("Enter Irish form", text: $userAnswer)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none) // Prevents automatic capitalization
                    .disableAutocorrection(true) // Disables autocorrection and predictive text
                    .padding()
                
                Button(action: {
                    submitAnswer()
                }) {
                    Text("Submit")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(userAnswer.isEmpty ? Color.gray : Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .disabled(userAnswer.isEmpty)
                .padding()
                
                Button(action: {
                    // Updated method call with subdirectory and resource name
                    audioPlayer.playAudio(subdirectory: question.audioSubdirectory, resourceName: question.audioResourceName)
                }) {
                    Text("Play Correct Audio")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(.bottom, 10)
                
                if showAnswer {
                    if userAnswer.lowercased() == question.form.lowercased() {
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
                            Text("Incorrect! Correct form: \(question.form)")
                                .foregroundColor(.red)
                        }
                        .padding(.bottom, 2)
                        
                    }
                    
                    Button("Next") {
                        loadNextQuestion()
                        showAnswer = false
                        userAnswer = ""
                    }
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                
                Spacer()
            } else {
                Button("Start Production") {
                    loadNextQuestion()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
        .navigationTitle("Production Mode")
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
    
    // MARK: - Functions
    
    func loadNextQuestion() {
        if !pronounForms.isEmpty {
            currentQuestion = pronounForms.randomElement()
            userAnswer = ""
            showAnswer = false
        }
    }
    
    func submitAnswer() {
        showAnswer = true
        showMeaning = true
        // You can add additional logic here if needed
    }
}

// MARK: - Preview

struct ProductionView_Previews: PreviewProvider {
    static var previews: some View {
        // Ensure that 'faoi' is a valid case in PrepositionalPronoun
        ProductionView(dialect: .connacht, pronoun: .faoi)
    }
}
