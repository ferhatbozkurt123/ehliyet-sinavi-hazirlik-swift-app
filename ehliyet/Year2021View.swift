import SwiftUI

struct Year2021View: View {
    var body: some View {
        List {
            NavigationLink(destination: Aralik_2021View()) {
                Text("Aralık 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Kasim_2021View()) {
                Text("Kasım 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ekim_2021View()) {
                Text("Ekim 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Eylul_2021View()) {
                Text("Eylül 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Agustos_2021View()) {
                Text("Ağustos 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Temmuz_2021View()) {
                Text("Temmuz 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Haziran_2021View()) {
                Text("Haziran 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mayis_2021View()) {
                Text("Mayıs 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Nisan_2021View()) {
                Text("Nisan 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mart_2021View()) {
                Text("Mart 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Subat_2021View()) {
                Text("Şubat 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ocak_2021View()) {
                Text("Ocak 2021 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
        }
        .navigationTitle("2021 Sınavları")
    }
}

#Preview {
    NavigationView {
        Year2021View()
    }
} 