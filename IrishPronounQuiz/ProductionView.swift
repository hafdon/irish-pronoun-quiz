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
    
    let pronounForms: [PronounForm]
    
    init(dialect: Dialect, pronoun: PrepositionalPronoun) {
        self.dialect = dialect
        self.pronoun = pronoun
        self.pronounForms = DataProvider.getPronounForms(dialect: dialect, preposition: pronoun)
    }
    
    var body: some View {
        VStack {
            if let question = currentQuestion {
                Text("Meaning: \(question.meaning)")
                    .font(.headline)
                    .padding()
                
                TextField("Enter Irish form", text: $userAnswer)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
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
                
                if showAnswer {
                    if userAnswer.lowercased() == question.form.lowercased() {
                        HStack {
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(.green)
                            Text("Correct!")
                                .foregroundColor(.green)
                        }
                        .padding(.bottom, 2)
                        
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
                    } else {
                        HStack {
                            Image(systemName: "xmark.circle")
                                .foregroundColor(.red)
                            Text("Incorrect! Correct form: \(question.form)")
                                .foregroundColor(.red)
                        }
                        .padding(.bottom, 2)
                        
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
