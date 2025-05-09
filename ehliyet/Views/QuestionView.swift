import SwiftUI

struct QuestionView: View {
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswer: String?
    @State private var userAnswers: [String] = []
    @State private var showResults = false
    @StateObject private var statisticsManager = StatisticsManager()
    
    let questions: [Question]
    let examDate: String
    
    var correctAnswers: Int {
        var count = 0
        for (index, answer) in userAnswers.enumerated() {
            if answer == questions[index].correctAnswer {
                count += 1
            }
        }
        return count
    }
    
    var wrongAnswers: Int {
        return userAnswers.count - correctAnswers
    }
    
    var successRate: Double {
        return Double(correctAnswers) / Double(questions.count) * 100
    }
    
    var body: some View {
        VStack {
            if !showResults {
                if currentQuestionIndex < questions.count {
                    questionView
                }
            } else {
                resultView
            }
        }
        .navigationTitle(examDate)
    }
    
    private var questionView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Soru \(currentQuestionIndex + 1)/\(questions.count)")
                .font(.headline)
                .padding(.bottom, 5)
            
            Text(questions[currentQuestionIndex].text)
                .padding(.bottom, 10)
            
            ForEach(questions[currentQuestionIndex].options, id: \.self) { option in
                optionButton(option)
            }
            
            nextButton
        }
        .padding()
    }
    
    private func optionButton(_ option: String) -> some View {
        Button(action: {
            selectedAnswer = String(option.prefix(1))
        }) {
            HStack {
                Text(option)
                    .foregroundColor(.primary)
                Spacer()
                if selectedAnswer == String(option.prefix(1)) {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.blue)
                } else {
                    Image(systemName: "circle")
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
    
    private var nextButton: some View {
        Button(action: {
            if let answer = selectedAnswer {
                if currentQuestionIndex < questions.count - 1 {
                    userAnswers.append(answer)
                    currentQuestionIndex += 1
                    selectedAnswer = nil
                } else {
                    userAnswers.append(answer)
                    statisticsManager.saveTestResult(
                        examDate: examDate,
                        correctCount: correctAnswers,
                        wrongCount: wrongAnswers,
                        totalQuestions: questions.count
                    )
                    showResults = true
                }
            }
        }) {
            Text(currentQuestionIndex < questions.count - 1 ? "İlerle" : "Testi Bitir")
                .frame(maxWidth: .infinity)
                .padding()
                .background(selectedAnswer != nil ? Color.blue : Color.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .disabled(selectedAnswer == nil)
        .padding(.top, 20)
    }
    
    private var resultView: some View {
        VStack(spacing: 20) {
            Text("Test Sonuçları")
                .font(.title)
                .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Doğru Sayısı: \(correctAnswers)")
                Text("Yanlış Sayısı: \(wrongAnswers)")
                Text("Başarı Oranı: %\(Int(successRate))")
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            
            Button(action: {
                currentQuestionIndex = 0
                selectedAnswer = nil
                userAnswers = []
                showResults = false
            }) {
                Text("Testi Tekrar Çöz")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

