import SwiftUI

struct Ocak_2020View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Ocak 2020 Ehliyet Sınav Soruları")
                    .font(.title)
                    .padding()
                
                // Buraya Ocak 2020 soruları gelecek
            }
        }
        .navigationTitle("Ocak 2020")
    }
} 