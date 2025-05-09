import SwiftUI

struct Mart_2020View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Mart 2020 Ehliyet Sınav Soruları")
                    .font(.title)
                    .padding()
            }
        }
        .navigationTitle("Mart 2020")
    }
} 