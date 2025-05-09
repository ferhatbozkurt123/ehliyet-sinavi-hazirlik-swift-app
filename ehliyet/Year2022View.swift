import SwiftUI

struct Year2022View: View {
    var body: some View {
        List {
            NavigationLink(destination: Aralik_2022View()) {
                Text("Aralık 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Kasim_2022View()) {
                Text("Kasım 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ekim_2022View()) {
                Text("Ekim 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Eylul_2022View()) {
                Text("Eylül 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Agustos_2022View()) {
                Text("Ağustos 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Temmuz_2022View()) {
                Text("Temmuz 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Haziran_2022View()) {
                Text("Haziran 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mayis_2022View()) {
                Text("Mayıs 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Nisan_2022View()) {
                Text("Nisan 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mart_2022View()) {
                Text("Mart 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Subat_2022View()) {
                Text("Şubat 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ocak_2022View()) {
                Text("Ocak 2022 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
        }
        .navigationTitle("2022 Sınavları")
    }
}

#Preview {
    NavigationView {
        Year2022View()
    }
} 