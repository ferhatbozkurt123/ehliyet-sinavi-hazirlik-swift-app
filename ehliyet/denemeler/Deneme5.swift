import SwiftUI

struct Deneme5View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Deneme Sınavı 5")
                    .font(.title)
                    .padding()
            }
        }
        .navigationTitle("Deneme 5")
    }
} 