import SwiftUI

struct Year2023View: View {
    var body: some View {
        List {
            NavigationLink(destination: Aralik_2023View()) {
                Text("Aralık 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Kasim_2023View()) {
                Text("Kasım 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ekim_2023View()) {
                Text("Ekim 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Eylul_2023View()) {
                Text("Eylül 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Agustos_2023View()) {
                Text("Ağustos 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Temmuz_2023View()) {
                Text("Temmuz 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Haziran_2023View()) {
                Text("Haziran 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mayis_2023View()) {
                Text("Mayıs 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Nisan_2023View()) {
                Text("Nisan 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mart_2023View()) {
                Text("Mart 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Subat_2023View()) {
                Text("Şubat 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ocak_2023View()) {
                Text("Ocak 2023 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
        }
        .navigationTitle("2023 Sınavları")
    }
}

#Preview {
    NavigationView {
        Year2023View()
    }
} 