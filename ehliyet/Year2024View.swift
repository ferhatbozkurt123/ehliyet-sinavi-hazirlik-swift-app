import SwiftUI

struct Year2024View: View {
    var body: some View {
        List {
            NavigationLink(destination: Aralik_2024View()) {
                Text("Aralık 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Kasim_2024View()) {
                Text("Kasım 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ekim_2024View()) {
                Text("Ekim 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Eylul_2024View()) {
                Text("Eylül 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Agustos_2024View()) {
                Text("Ağustos 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Temmuz_2024View()) {
                Text("Temmuz 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Haziran_2024View()) {
                Text("Haziran 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mayis_2024View()) {
                Text("Mayıs 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Nisan_2024View()) {
                Text("Nisan 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Mart_2024View()) {
                Text("Mart 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Subat_2024View()) {
                Text("Şubat 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
            
            NavigationLink(destination: Ocak_2024View()) {
                Text("Ocak 2024 Ehliyet Sınavı")
                    .padding(.vertical, 8)
            }
        }
        .navigationTitle("2024 Sınavları")
    }
}

#Preview {
    NavigationView {
        Year2024View()
    }
} 