import SwiftUI

struct Deneme2View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Deneme Sınavı 2")
                    .font(.title)
                    .padding()
            }
        }
        .navigationTitle("Deneme 2")
    }
} 