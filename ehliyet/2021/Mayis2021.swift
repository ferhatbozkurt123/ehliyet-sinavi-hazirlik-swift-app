import SwiftUI

struct Mayis_2021View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Mayıs 2021 Ehliyet Sınav Soruları")
                    .font(.title)
                    .padding()
            }
        }
        .navigationTitle("Mayıs 2021")
    }
} 