import SwiftUI

struct Deneme3View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Deneme Sınavı 3")
                    .font(.title)
                    .padding()
            }
        }
        .navigationTitle("Deneme 3")
    }
} 