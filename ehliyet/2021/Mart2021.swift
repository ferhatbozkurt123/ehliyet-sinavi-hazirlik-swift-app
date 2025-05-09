import SwiftUI

struct Mart_2021View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Mart 2021 Ehliyet Sınav Soruları")
                    .font(.title)
                    .padding()
            }
        }
        .navigationTitle("Mart 2021")
    }
} 