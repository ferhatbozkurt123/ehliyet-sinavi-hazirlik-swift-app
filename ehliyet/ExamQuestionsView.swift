import SwiftUI

struct ExamQuestionsView: View {
    let years = [2025, 2024, 2023, 2022, 2021, 2020, 2019]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(years, id: \.self) { year in
                    NavigationLink(destination: getYearView(for: year)) {
                        ExamYearCard(year: year)
                    }
                }
            }
            .padding()
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle("Sınav Soruları")
    }
    
    func getYearView(for year: Int) -> some View {
        switch year {
        case 2025: return AnyView(Year2025View())
        case 2024: return AnyView(Year2024View())
        case 2023: return AnyView(Year2023View())
        case 2022: return AnyView(Year2022View())
        case 2021: return AnyView(Year2021View())
        case 2020: return AnyView(Year2020View())
        case 2019: return AnyView(Year2019View())
        default: return AnyView(EmptyView())
        }
    }
}

struct ExamYearCard: View {
    let year: Int
    
    var isCurrentYear: Bool {
        year == Calendar.current.component(.year, from: Date())
    }
    
    var body: some View {
        HStack(spacing: 16) {
            // Sol taraf - Yıl
            Text(String(format: "%d", year))
                .font(.system(size: 22, weight: .bold, design: .rounded))
                .foregroundColor(isCurrentYear ? .blue : .primary)
                .frame(minWidth: 70)
                .padding(.vertical, 8)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(isCurrentYear ? Color.blue.opacity(0.1) : Color.gray.opacity(0.05))
                )
            
            // Orta kısım - Başlık
            Text("Ehliyet Sınavları")
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.primary)
            
            Spacer()
            
            // Sağ taraf - Ok işareti
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.gray)
                .padding(.trailing, 4)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 8, x: 0, y: 4)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(
                    isCurrentYear ? 
                        Color.blue.opacity(0.2) : 
                        Color(.systemGray5),
                    lineWidth: 1
                )
        )
    }
}

#Preview {
    NavigationView {
        ExamQuestionsView()
    }
} 