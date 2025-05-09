import SwiftUI

struct Year2020View: View {
    var body: some View {
        List {
            NavigationLink(destination: Aralik_2020View()) {
                Text("Aralık 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Kasim_2020View()) {
                Text("Kasım 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ekim_2020View()) {
                Text("Ekim 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Eylul_2020View()) {
                Text("Eylül 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Agustos_2020View()) {
                Text("Ağustos 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Temmuz_2020View()) {
                Text("Temmuz 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Haziran_2020View()) {
                Text("Haziran 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mayis_2020View()) {
                Text("Mayıs 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Nisan_2020View()) {
                Text("Nisan 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mart_2020View()) {
                Text("Mart 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Subat_2020View()) {
                Text("Şubat 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ocak_2020View()) {
                Text("Ocak 2020 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
        }
        .navigationTitle("2020 Sınavları")
    }
}

#Preview {
    NavigationView {
        Year2020View()
    }
} 