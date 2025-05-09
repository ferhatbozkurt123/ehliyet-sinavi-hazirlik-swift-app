import SwiftUI

struct Deneme4View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Deneme Sınavı 4")
                    .font(.title)
                    .padding()
            }
        }
        .navigationTitle("Deneme 4")
    }
} 