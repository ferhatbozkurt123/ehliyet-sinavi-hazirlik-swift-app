import SwiftUI

struct Deneme1View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Deneme Sınavı 1")
                    .font(.title)
                    .padding()
                
                // Buraya deneme soruları gelecek
            }
        }
        .navigationTitle("Deneme 1")
    }
} 