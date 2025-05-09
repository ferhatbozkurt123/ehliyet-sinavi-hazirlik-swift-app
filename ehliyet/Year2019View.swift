import SwiftUI

struct Year2019View: View {
    var body: some View {
        List {
            NavigationLink(destination: Aralik_2019View()) {
                Text("Aralık 2019 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Kasim_2019View()) {
                Text("Kasım 2019 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ekim_2019View()) {
                Text("Ekim 2019 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Temmuz_2019View()) {
                Text("Temmuz 2019 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mart_2019View()) {
                Text("Mart 2019 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
        }
        .navigationTitle("2019 Sınavları")
    }
}

#Preview {
    NavigationView {
        Year2019View()
    }
} 
