import SwiftUI

struct RecognitionView: View {
    let dialect: Dialect
    let pronoun: PrepositionalPronoun
    @State private var currentQuestion: PronounForm?
    @State private var selectedMeaning: String = ""
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
                Text("Select the correct meaning for: \(question.form)")
                    .font(.headline)
                    .padding()

                Button(action: {
                    audioPlayer.playAudio(named: question.audioFileName)
                }) {
                    Text("Play Audio")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

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
                            selectedMeaning = meaning
                        }
                    }
                }

                Button(action: {
                    showAnswer = true
                }) {
                    Text("Submit")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selectedMeaning.isEmpty ? Color.gray : Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .disabled(selectedMeaning.isEmpty)
                .padding()

                if showAnswer {
                    if selectedMeaning == question.meaning {
                        Text("Correct!")
                            .foregroundColor(.green)
                    } else {
                        Text("Incorrect! Correct meaning: \(question.meaning)")
                            .foregroundColor(.red)
                    }

                    Button("Next") {
                        loadNextQuestion()
                        showAnswer = false
                        selectedMeaning = ""
                    }
                    .padding()
                }
            } else {
                Button("Start Recognition") {
                    loadNextQuestion()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
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

    func loadNextQuestion() {
        if !pronounForms.isEmpty {
            currentQuestion = pronounForms.randomElement()
        }
    }
}
