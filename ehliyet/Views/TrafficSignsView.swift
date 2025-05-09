import SwiftUI

struct TrafficSign: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let category: SignCategory
}

enum SignCategory: String, CaseIterable {
    case warning = "Uyarı İşaretleri"
    case prohibition = "Yasaklama İşaretleri"
    case mandatory = "Mecburi Yön İşaretleri"
    case information = "Bilgi İşaretleri"
    case priority = "Öncelik İşaretleri"
    case auxiliary = "Durma ve Parketme İşaretleri"
}

struct TrafficSignsView: View {
    @State private var selectedCategory: SignCategory = .warning
    
    let trafficSigns: [TrafficSign] = [
        // Uyarı İşaretleri
        TrafficSign(
            name: "Tehlikeli Viraj",
            image: "tehlikeli_viraj", // Asset olarak eklenmeli
            description: "Sola tehlikeli viraj işareti, sürücüleri yaklaşmakta olan keskin sol viraja karşı uyarır.",
            category: .warning
        ),
        // Daha fazla işaret eklenebilir...
    ]
    
    var filteredSigns: [TrafficSign] {
        trafficSigns.filter { $0.category == selectedCategory }
    }
    
    var body: some View {
        VStack {
            // Kategori Seçici
            Picker("Kategori", selection: $selectedCategory) {
                ForEach(SignCategory.allCases, id: \.self) { category in
                    Text(category.rawValue).tag(category)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            // İşaretler Listesi
            ScrollView {
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 16) {
                    ForEach(filteredSigns) { sign in
                        VStack {
                            Image(sign.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                            
                            Text(sign.name)
                                .font(.caption)
                                .multilineTextAlignment(.center)
                                .padding(.top, 4)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        .onTapGesture {
                            // İşarete tıklandığında detay görünümü gösterilebilir
                            showSignDetail(sign)
                        }
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Trafik İşaretleri")
    }
    
    private func showSignDetail(_ sign: TrafficSign) {
        // Detay görünümü için sheet veya navigation
    }
}

// İşaret detayları için view
struct TrafficSignDetailView: View {
    let sign: TrafficSign
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(sign.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text(sign.name)
                    .font(.title)
                
                Text(sign.description)
                    .padding()
                
                Spacer()
            }
        }
        .navigationTitle(sign.name)
    }
} 