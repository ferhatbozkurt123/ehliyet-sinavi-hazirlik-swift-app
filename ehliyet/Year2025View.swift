import SwiftUI

struct Year2025View: View {
    var body: some View {
        List {
            NavigationLink(destination: Subat_2025View()) {
                Text("Şubat 2025 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ocak_2025View()) {
                Text("Ocak 2025 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
        }
        .navigationTitle("2025 Sınavları")
    }
}

#Preview {
    NavigationView {
        Year2025View()
    }
} 