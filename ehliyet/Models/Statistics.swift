import Foundation

struct TestResult: Codable, Identifiable {
    let id: UUID
    let date: Date
    let examDate: String
    let correctCount: Int
    let wrongCount: Int
    let totalQuestions: Int
    
    var successRate: Double {
        return Double(correctCount) / Double(totalQuestions) * 100
    }
}

class StatisticsManager: ObservableObject {
    @Published private(set) var testResults: [TestResult] = []
    private let userDefaults = UserDefaults.standard
    private let storageKey = "testResults"
    
    init() {
        loadTestResults()
    }
    
    func saveTestResult(examDate: String, correctCount: Int, wrongCount: Int, totalQuestions: Int) {
        let result = TestResult(
            id: UUID(),
            date: Date(),
            examDate: examDate,
            correctCount: correctCount,
            wrongCount: wrongCount,
            totalQuestions: totalQuestions
        )
        
        testResults.append(result)
        saveToStorage()
    }
    
    private func loadTestResults() {
        if let data = userDefaults.data(forKey: storageKey),
           let results = try? JSONDecoder().decode([TestResult].self, from: data) {
            testResults = results
        }
    }
    
    private func saveToStorage() {
        if let encoded = try? JSONEncoder().encode(testResults) {
            userDefaults.set(encoded, forKey: storageKey)
        }
    }
} 