import SwiftUI

struct GenelDenemeView: View {
    var body: some View {
        List {
            NavigationLink(destination: Deneme1View()) {
                DenemeCard(
                    number: 1,
                    isCompleted: false
                  
                )
            }
            .listRowSeparator(.hidden)
            
            NavigationLink(destination: Deneme2View()) {
                DenemeCard(
                    number: 2,
                    isCompleted: false
                 
                )
            }
            .listRowSeparator(.hidden)
            
            NavigationLink(destination: Deneme3View()) {
                DenemeCard(
                    number: 3,
                    isCompleted: false
                )
            }
            .listRowSeparator(.hidden)
            
            NavigationLink(destination: Deneme4View()) {
                DenemeCard(
                    number: 4,
                    isCompleted: false
                )
            }
            .listRowSeparator(.hidden)
            
            NavigationLink(destination: Deneme5View()) {
                DenemeCard(
                    number: 5,
                    isCompleted: false
                )
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.insetGrouped)
        .navigationTitle("Genel Denemeler")
        .background(Color(.systemGroupedBackground))
    }
}

// Yardımcı görünüm bileşeni
struct DenemeCard: View {
    let number: Int
    let isCompleted: Bool
    var score: Int = 0
    
    var body: some View {
        HStack(spacing: 15) {
            // Deneme numarası
            ZStack {
                Circle()
                    .fill(isCompleted ? Color.green.opacity(0.1) : Color.blue.opacity(0.1))
                    .frame(width: 45, height: 45)
                
                Text("\(number)")
                    .font(.title3.bold())
                    .foregroundColor(isCompleted ? .green : .blue)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Deneme Sınavı \(number)")
                    .font(.headline)
                    .foregroundColor(.primary)
                
                if isCompleted {
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                        Text("Tamamlandı - %\(score)")
                            .font(.caption)
                            .foregroundColor(.green)
                    }
                } else {
                    HStack {
                        Image(systemName: "circle")
                            .foregroundColor(.gray)
                        Text("Henüz çözülmedi")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .font(.system(size: 14, weight: .semibold))
        }
        .padding(.vertical, 8)
        .contentShape(Rectangle())
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(10)
    }
}

#Preview {
    NavigationView {
        GenelDenemeView()
    }
} 
