import SwiftUI
import Charts

struct StatisticsView: View {
    @AppStorage("totalExams") private var totalExams = 0
    @AppStorage("correctAnswers") private var correctAnswers = 0
    @AppStorage("totalQuestions") private var totalQuestions = 0
    @AppStorage("studyTime") private var studyTime = 0 // Dakika cinsinden
    
    // Demo veriler
    let monthlyProgress = [
        ProgressData(month: "Ocak", score: 65),
        ProgressData(month: "Şubat", score: 72),
        ProgressData(month: "Mart", score: 78),
        ProgressData(month: "Nisan", score: 85),
        ProgressData(month: "Mayıs", score: 82)
    ]
    
    let categoryScores = [
        CategoryScore(name: "Trafik", score: 85),
        CategoryScore(name: "Motor", score: 75),
        CategoryScore(name: "İlk Yardım", score: 90),
        CategoryScore(name: "Çevre", score: 80)
    ]
    
    var successRate: Double {
        guard totalQuestions > 0 else { return 0 }
        return Double(correctAnswers) / Double(totalQuestions) * 100
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Özet Kartları
                HStack(spacing: 15) {
                    StatCard(
                        title: "Toplam Sınav",
                        value: "\(totalExams)",
                        icon: "doc.text.fill",
                        color: .blue
                    )
                    
                    StatCard(
                        title: "Başarı Oranı",
                        value: String(format: "%.1f%%", successRate),
                        icon: "chart.line.uptrend.xyaxis",
                        color: .green
                    )
                }
                
                HStack(spacing: 15) {
                    StatCard(
                        title: "Çalışma Süresi",
                        value: formatStudyTime(),
                        icon: "clock.fill",
                        color: .orange
                    )
                    
                    StatCard(
                        title: "Doğru Sayısı",
                        value: "\(correctAnswers)/\(totalQuestions)",
                        icon: "checkmark.circle.fill",
                        color: .purple
                    )
                }
                
                // Aylık İlerleme Grafiği
                GroupBox(
                    label: Label("AYLIK İLERLEME", systemImage: "chart.xyaxis.line")
                        .foregroundColor(.blue)
                ) {
                    Chart(monthlyProgress) { item in
                        LineMark(
                            x: .value("Ay", item.month),
                            y: .value("Puan", item.score)
                        )
                        .foregroundStyle(.blue)
                        .symbol(.circle)
                        
                        AreaMark(
                            x: .value("Ay", item.month),
                            y: .value("Puan", item.score)
                        )
                        .foregroundStyle(.blue.opacity(0.1))
                    }
                    .frame(height: 200)
                    .padding()
                }
                .groupBoxStyle(StatisticsGroupBox())
                
                // Kategori Bazlı Performans
                GroupBox(
                    label: Label("KATEGORİ PERFORMANSI", systemImage: "chart.bar.fill")
                        .foregroundColor(.green)
                ) {
                    VStack(spacing: 15) {
                        ForEach(categoryScores) { category in
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(category.name)
                                        .font(.subheadline)
                                    Spacer()
                                    Text("\(category.score)%")
                                        .font(.subheadline.bold())
                                }
                                
                                GeometryReader { geometry in
                                    ZStack(alignment: .leading) {
                                        Rectangle()
                                            .fill(Color.gray.opacity(0.2))
                                            .frame(height: 8)
                                            .cornerRadius(4)
                                        
                                        Rectangle()
                                            .fill(category.score >= 80 ? Color.green : (category.score >= 60 ? Color.orange : Color.red))
                                            .frame(width: geometry.size.width * CGFloat(category.score) / 100, height: 8)
                                            .cornerRadius(4)
                                    }
                                }
                                .frame(height: 8)
                            }
                        }
                    }
                    .padding()
                }
                .groupBoxStyle(StatisticsGroupBox())
                
                // Başarı Rozeti
                if successRate >= 70 {
                    AchievementBadge(successRate: successRate)
                }
            }
            .padding()
        }
        .navigationTitle("İstatistikler")
    }
    
    private func formatStudyTime() -> String {
        let hours = studyTime / 60
        let minutes = studyTime % 60
        return "\(hours)s \(minutes)dk"
    }
}

// Yardımcı Görünümler
struct StatCard: View {
    let title: String
    let value: String
    let icon: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(color)
                Text(title)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Text(value)
                .font(.title2.bold())
                .foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(12)
        .shadow(color: color.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

struct AchievementBadge: View {
    let successRate: Double
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "star.circle.fill")
                .font(.system(size: 60))
                .foregroundColor(.yellow)
            
            Text("Tebrikler!")
                .font(.headline)
            
            Text("Başarı oranınız %\(Int(successRate))")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(12)
        .shadow(color: .yellow.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}

struct StatisticsGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            HStack {
                configuration.label
                    .font(.headline)
                Spacer()
            }
            .padding(.bottom, 5)
            
            configuration.content
        }
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(12)
        .shadow(color: Color.gray.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}

// Veri Modelleri
struct ProgressData: Identifiable {
    let id = UUID()
    let month: String
    let score: Int
}

struct CategoryScore: Identifiable {
    let id = UUID()
    let name: String
    let score: Int
}

#Preview {
    NavigationView {
        StatisticsView()
    }
} 