import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @Environment(\.colorScheme) var colorScheme
    
    @State private var isSpinning = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Sınav Soruları Butonu
                    NavigationLink(destination: ExamQuestionsView()) {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                HStack {
                                    Image(systemName: "doc.text.fill")
                                        .foregroundColor(.blue)
                                        .imageScale(.large)
                                    Text("SINAV SORULARI")
                                        .font(.headline)
                                        .foregroundColor(.blue)
                                }
                                Text("2019-2025 yılları arası tüm sorular")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color(.secondarySystemGroupedBackground))
                        .cornerRadius(12)
                        .shadow(color: .blue.opacity(0.2), radius: 5, x: 0, y: 2)
                    }
                    
                    // Trafik İşaretleri
                    NavigationLink(destination: TrafficSignsView()) {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                HStack {
                                    Image(systemName: "signpost.right.fill")
                                        .foregroundColor(.red)
                                        .imageScale(.large)
                                    Text("TRAFİK İŞARETLERİ")
                                        .font(.headline)
                                        .foregroundColor(.red)
                                }
                                Text("Tüm trafik işaretlerini öğren")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color(.secondarySystemGroupedBackground))
                        .cornerRadius(12)
                        .shadow(color: .red.opacity(0.2), radius: 5, x: 0, y: 2)
                    }
                    
                    // Genel Denemeler
                    NavigationLink(destination: GenelDenemeView()) {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                HStack {
                                    Image(systemName: "doc.text.fill")
                                        .foregroundColor(.green)
                                        .imageScale(.large)
                                    Text("DENEME SINAVLARI")
                                        .font(.headline)
                                        .foregroundColor(.green)
                                }
                                Text("Kendini test et")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color(.secondarySystemGroupedBackground))
                        .cornerRadius(12)
                        .shadow(color: .green.opacity(0.2), radius: 5, x: 0, y: 2)
                    }
                    
                    // İstatistikler
                    NavigationLink(destination: StatisticsView()) {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                HStack {
                                    Image(systemName: "chart.bar.fill")
                                        .foregroundColor(.orange)
                                        .imageScale(.large)
                                    Text("İSTATİSTİKLER")
                                        .font(.headline)
                                        .foregroundColor(.orange)
                                }
                                Text("Gelişimini takip et")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color(.secondarySystemGroupedBackground))
                        .cornerRadius(12)
                        .shadow(color: .orange.opacity(0.2), radius: 5, x: 0, y: 2)
                    }
                    
                    // Ayarlar
                    NavigationLink(destination: SettingsView()) {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                HStack {
                                    Image(systemName: "gear")
                                        .foregroundColor(.gray)
                                        .imageScale(.large)
                                    Text("AYARLAR")
                                        .font(.headline)
                                        .foregroundColor(.gray)
                                }
                                Text("Uygulama ayarlarını özelleştir")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color(.secondarySystemGroupedBackground))
                        .cornerRadius(12)
                        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
                    }
                    
                    // Logo ve Alt Bilgi
                    VStack(spacing: 5) {
                        Spacer()
                            .frame(height: 20)
                        
                        Image("ehliyet-logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180, height: 180)
                            .opacity(0.8)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.gray.opacity(0.8), lineWidth: 0)
                            ).padding(0.1)
                        
                            .rotationEffect(.degrees(isSpinning ? 360 : 0))
                            .animation(
                                Animation.linear(duration: 20)
                                    .repeatForever(autoreverses: false),
                                value: isSpinning
                            )
                    }
                    .padding(.top, 30)
                    .onAppear {
                        isSpinning = true
                    }
                }
                .padding()
            }
            .background(Color(.systemGroupedBackground))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "car.fill")
                            .foregroundColor(.blue)
                        Text("Ehliyet Sınavı")
                            .font(.headline)
                    }
                }
            }
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}



// Yardımcı görünümler
struct PracticeCard: View {
    let title: String
    let subtitle: String
    let iconName: String
    let color: Color
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(color)
                .imageScale(.large)
                .frame(width: 30)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .foregroundColor(.primary)
                    .font(.system(.body, design: .rounded))
                
                Text(subtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .imageScale(.small)
        }
        .contentShape(Rectangle())
    }
}

struct ColoredGroupBox: GroupBoxStyle {
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            HStack {
                configuration.label
                    .font(.headline)
                Spacer()
            }
            .padding(.bottom, 5)
            
            configuration.content
        }
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: color.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}

struct YearDetailView: View {
    let year: Int
    
    // Türkçe ay isimleri için yardımcı fonksiyon
    func getMonthName(_ month: Int) -> String {
        let months = [
            "Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran",
            "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"
        ]
        return months[month - 1]
    }
    
    var body: some View {
        List {
            if year == 2025 {
                ForEach(1...31, id: \.self) { day in
                    NavigationLink(destination: DayDetailView(year: 2025, month: 1, day: day)) {
                        Text("\(day) Ocak 2025")
                            .padding(.vertical, 8)
                    }
                }
            } else {
                ForEach((1...12).reversed(), id: \.self) { month in
                    NavigationLink(destination: MonthDetailView(year: year, month: month)) {
                        Text("\(getMonthName(month)) Ayı Ehliyet Soruları")
                            .padding(.vertical, 8)
                    }
                }
            }
        }
        .navigationTitle(year == 2025 ? "Ocak 2025 Sınavları" : "\(year) Sınavları")
    }
}

// 2025 yılı için özel detay görünümü
struct DayDetailView: View {
    let year: Int
    let month: Int
    let day: Int
    
    // Soru yapısı için
    
    
    // Tüm günlerin sorularını içeren fonksiyon
    func getQuestionsForDay(_ day: Int) -> [Question] {
        switch day {
        case 1:
            return [ // 1 Ocak soruları
                Question(
                    text: "Geçilmekte olan araç sürücüsü aşağıdakilerden hangisini yapmalıdır?",
                    options: [
                        "A) Hızını arttırmalıdır.",
                        "B) Bulunduğu şeridi izlemelidir.",
                        "C) Önündeki aracı geçmeye çalışmalıdır.",
                        "D) Dönüş lambalarıyla geç işareti vermelidir."
                    ],
                    correctAnswer: "B"
                ),
                Question(
                    text: "Bir sürücünün trafik içindeki istenmeyen durumlara öfkelenmesi ve bu öfkeyi belli etmesi yerine, hangi davranışı göstermesi hâlinde çok daha huzurlu bir trafik ortamı oluşur?",
                    options: [
                        "A) Hoşgörülü olması",
                        "B) Bencil davranması",
                        "C) Aşırı stres yapması",
                        "D) Sürekli kornaya basması"
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Aksine bir durum yoksa, otoyollarda yolcu sepetsiz iki tekerlekli motosikletlerin azami hız sınırı saatte kaç kilometredir?",
                    options: [
                        "A) 70",
                        "B) 80",
                        "C) 90",
                        "D) 100"
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Aşağıdakilerden hangisinin her periyodik bakımda değiştirilmesi gerekir?",
                    options: [
                        "A) Polen filtresinin",
                        "B) Fren hidroliğinin",
                        "C) Araç lastiklerinin",
                        "D) Soğutma suyunun"
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Geceleri araç kullanırken aydınlatmanın yeterli olduğu yerlerde araç ışıklarından hangisi kullanılmalıdır?",
                    options: [
                        "A) Sis ışıkları",
                        "B) Acil uyarı ışıkları",
                        "C) Uzağı gösteren ışıklar",
                        "D) Yakını gösteren ışıklar"
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Aşağıdakilerden hangisi trafiğin düzenlenmesinde en yüksek önceliğe sahiptir?",
                    options: [
                        "A) Trafik ışıkları",
                        "B) Trafik görevlisi",
                        "C) Yer işaretleri",
                        "D) Trafik levhaları"
                    ],
                    correctAnswer: "B"
                ),
                Question(
                    text: "Bayılan kazazedeye aşağıdaki ilk yardım uygulamalarından hangisi yapılır?",
                    options: [
                        "A) Duyu organları uyarılır.",
                        "B) Vücut sıcaklığı düşürülür.",
                        "C) Bekerli, soğuk içecek verilir.",
                        "D) Hastahaneye götürülür."
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Kara yolunda, ticari olarak tescil edilmiş bir motorlu taşıtı süren kişiye ne ad verilir?",
                    options: [
                        "A) Şoför",
                        "B) Sürücü",
                        "C) İşleten",
                        "D) Araç sahibi"
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Hangisi alternatörün üretmiş olduğu elektriğin voltajını ve şiddetini kontrol altıda tutan şarj sistemi parçasıdır?",
                    options: [
                        "A) Karbüratör",
                        "B) Regülâtör",
                        "C) Marş motoru",
                        "D) Sigorta"
                    ],
                    correctAnswer: "B"
                ),
                Question(
                    text: "Hangisi trafik kaza oranını etkileyen etmenlerden biri değildir?",
                    options: [
                        "A) Aracın yük durumu",
                        "B) Kural ihlalleri",
                        "C) Araç bakımları",
                        "D) Aracın beygir gücü"
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Motorun çalışma sıcaklığına çok geç ulaşması, aşağıdakilerden hangisinin arızalı olduğunu gösterir?",
                    options: [
                        "A) Radyatör",
                        "B) Termostat",
                        "C) Yağ filtresi",
                        "D) Devridaim pompası"
                    ],
                    correctAnswer: "B"
                ),
                Question(
                    text: "Aşağıdakilerden hangisi araçlarda kirli yakıt kullanılmasının bir sonucudur?",
                    options: [
                        "A) Motor rölanti devrinin yüksek olması",
                        "B) Yağlama sisteminin görev yapamaması",
                        "C) Motorun düzensiz ve tekleyerek çalışması",
                        "D) Marş yapıldığında, marş motorunun yavaş dönmesi"
                    ],
                    correctAnswer: "C"
                ),
                Question(
                    text: "Lastiklerin hava basıncı dengesizse frenleme anında aşağıdakilerden hangisi olur?",
                    options: [
                        "A) Araç bir tarafa çeker.",
                        "B) Fren pedalı sertleşir.",
                        "C) Frenlerden ses gelir.",
                        "D) Fren hidroliği azalır."
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Kazazedenin dolaşımı değerlendirilirken; I. Bebeklerde kol atardamarından, II. Çocuk ve yetişkinlerde şah damarından nabız alınır. Verilenler için aşağıdakilerden hangisi söylenebilir?",
                    options: [
                        "A) I. doğru, II. yanlış",
                        "B) I. yanlış, II. doğru",
                        "C) Her ikisi de doğru",
                        "D) Her ikisi de yanlış"
                    ],
                    correctAnswer: "C"
                ),
                Question(
                    text: "Kendinden çok başkalarını düşünen, başkalarının iyiliği için fedakârlık yapan ve özgeci şeklinde tanımlanır. Yardım etme davranışının bir alt kategorisidir. Yukarıdaki açıklama hangi davranış özelliğine aittir?",
                    options: [
                        "A) Bencillik",
                        "B) Saldırganlık",
                        "C) Diğergamlık",
                        "D) Sorumsuzluk"
                    ],
                    correctAnswer: "C"
                ),
                Question(
                    text: "Hangisi, servis veya tamir atölyeleri tarafından yapılmalıdır?",
                    options: [
                        "A) Silecek lastiklerinin kontrolü",
                        "B) Antifiriz yoğunluk derecesi kontrolü",
                        "C) Lastik hava basınç kontrolü",
                        "D) Motor yağı seviyesinin kontrolü"
                    ],
                    correctAnswer: "B"
                ),
                Question(
                    text: "Seyir hâlindeyken araçtan yanık kablo kokusu alınırsa aşağıdakilerden hangisi yapılır?",
                    options: [
                        "A) Yakıt seviyesi kontrol edilir.",
                        "B) Önemsenmez, devam edilir.",
                        "C) Lastiklerin hava basıncı kontrol edilir.",
                        "D) Durulur, kontak kapatılır ve akü bağlantısı çıkartılır."
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Yağ seviyesi normalin çok altında iken motorun çalışması devam ettirilirse aşağıdakilerden hangisinin olması beklenir?",
                    options: [
                        "A) Motor gücünün artması",
                        "B) Motorun çabuk soğuması",
                        "C) Motorun aşırı ısınarak zarar görmesi",
                        "D) Motorun normal çalışmasını sürdürmesi"
                    ],
                    correctAnswer: "C"
                ),
                Question(
                    text: "Hangisini yapmak çevrenin temiz kalmasına katkı sağlar?",
                    options: [
                        "A) Gereksiz yere korna çalmak",
                        "B) Seyahat esnasında, yiyecek atıklarını otoyol kenarlarına bırakmak",
                        "C) Egzoz emisyon ölçümünü geciktirmek",
                        "D) Araç bakımlarını zamanında yaptırmak"
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Turnike uygulamasında ilk bir saat içinde, kaç dakikada bir boğucu sargı gevşetilmelidir?",
                    options: [
                        "A) 1-2 dakika",
                        "B) 5-10 dakika",
                        "C) 15-20 dakika",
                        "D) 30-40 dakika"
                    ],
                    correctAnswer: "C"
                ),
                Question(
                    text: "Konvoy hâlinde seyreden araçlar arasındaki mesafe ne kadar olmalıdır?",
                    options: [
                        "A) Kendilerini geçmek isteyen araçların güvenle girebilecekleri kadar",
                        "B) Araç uzunluğunun üç katı kadar",
                        "C) Aracın cinsi ve teknik özelliklerinin gerektirdiği kadar",
                        "D) Trafik ve yol durumuna göre istenildiği kadar"
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Araçların durma ve duraklama halleri dışında, genelde uzun süreli olarak bekletilmek üzere bırakılmasına ne ad verilir?",
                    options: [
                        "A) Park etme",
                        "B) İşaretleme",
                        "C) Trafik kazası",
                        "D) Trafikten men"
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Kollarında üç yuvarlaklı sarı bant bulunan ve beyaz baston taşıyan yayayı taşıt yolunda gören sürücü nasıl hareket etmelidir?",
                    options: [
                        "A) Etkili şekilde korna çalmalı",
                        "B) Etkili fren yapıp, yayanın dikkatini çekmeli",
                        "C) Yayayı korkutmadan yanından hızla geçmeli",
                        "D) Yavaşlamalı, gerektiğinde durup yayaya yardımcı olmalı"
                    ],
                    correctAnswer: "D"
                )
            ]
        case 2:
            return [ // 2 Ocak soruları
                Question(
                    text: "Araçların orijinal sistemlerinde yer alan egzoz borusu ve susturucunun korunması ile aşağıdakilerden hangisi amaçlanır?",
                    options: [
                        "A) Gürültü kirliliğinin azaltılması",
                        "B) Trafik yoğunluğunun azaltılması",
                        "C) Temiz olmayan yakıt kullanılması",
                        "D) Kazalara karşı güvenliğin artırılması"
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Aşağıdakilerden hangisi, duraklanan veya park edilen yerden çıkan araç sürücüsünün uyması gereken kurallardan biri değildir?",
                    options: [
                        "A) Işıkla veya kolla çıkış işareti vermesi",
                        "B) Aracını ve aracının etrafını kontrol etmesi",
                        "C) Yoldan geçen araç sürücülerini ikaz edip yavaşlatması",
                        "D) Sakıncalı bir durum olmadığında manevraya başlaması"
                    ],
                    correctAnswer: "C"
                ),
                Question(
                    text: "Trafik psikologları, yaşam tarzı ile araç kullanmanın ilişkili olduğunu belirtmektedirler. Buna göre stresle olumlu baş etme konusunda sorun yaşayan sürücülerin, genel olarak trafikte hangi temel değere sahip olmadığı bilinir?",
                    options: [
                        "A) Sabır",
                        "B) Öfke",
                        "C) Bencillik",
                        "D) İnatlaşma"
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Akü içerisindeki elektrolit seviyesi plakaların neresinde olmalıdır?",
                    options: [
                        "A) Altında",
                        "B) Üzerinde",
                        "C) Ortasında",
                        "D) Hizasında"
                    ],
                    correctAnswer: "B"
                ),
                Question(
                    text: "Sürücüler dönüşlerde aşağıdakilerden hangisini yapmak zorundadır?",
                    options: [
                        "A) Arkadan gelen araçlara yol vermek",
                        "B) Dönmeye başladıktan sonra işaret vermek",
                        "C) İşaret verdiği anda aniden şerit değiştirmek",
                        "D) Niyetini dönüş lambasıyla önceden bildirmek"
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Kara yolunda, ticari olarak tescil edilmiş bir motorlu taşıtı süren kişiye ne ad verilir?",
                    options: [
                        "A) Şoför",
                        "B) Sürücü",
                        "C) İşleten",
                        "D) Araç sahibi"
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Hangisi yakıt sisteminin elemanıdır?",
                    options: [
                        "A) Vantilatör",
                        "B) Kondansatör",
                        "C) Karter",
                        "D) Yakıt deposu"
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Aşağıdakilerden hangisi sürücüye uygun davranışlardandır?",
                    options: [
                        "A) Yolcuların isteğine göre araç kullanmak",
                        "B) Emniyet görevlisinin olmadığı yerlerde kendi koyduğu kuralları uygulamak",
                        "C) Diğer sürücülerden önce kendi hakkını gözetmek",
                        "D) Yoldan geçerken gördüğü yaralanmalı bir kazayı hemen ilgili birimlere bildirmek"
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Akünün bakımında aşağıdakilerden hangisine dikkat edilir?",
                    options: [
                        "A) Yağ seviyesine",
                        "B) Antifriz seviyesine",
                        "C) Hidrolik seviyesine",
                        "D) Elektrolit seviyesine"
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Araç motorunun ilk çalıştırılması esnasında vites hangi konumda olmalıdır?",
                    options: [
                        "A) Boş",
                        "B) 1. vites",
                        "C) 2. vites",
                        "D) 3. vites"
                    ],
                    correctAnswer: "A"
                ),
                Question(
                    text: "Basınçlı olarak çıkan yanmış gazların sesini azaltan aşağıdakilerden hangisidir?",
                    options: [
                        "A) Egzoz supabı",
                        "B) Emme susturucusu",
                        "C) Emme manifoldu",
                        "D) Egzoz susturucusu"
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Tehlikeli madde taşıyan araçların, boş olarak seyretmesi sırasındaki azamî hızı için aşağıdakilerden hangisi söylenebilir?",
                    options: [
                        "A) Tehlikeli madde yüklü araçlar için belirlenen hızla gitmelidirler.",
                        "B) Tehlikeli maddenin cinsine göre belirlenen hızla gitmelidirler.",
                        "C) Kendi sınıflarındaki araçlar için belirlenen hızla gitmelidirler.",
                        "D) Aracın teknik özelliklerine uygun bir hız tespit etmelidirler."
                    ],
                    correctAnswer: "C"
                ),
                Question(
                    text: "Normal yetişkin bir insan, kanama sonucu vücudundaki kanın % kaçını kaybederse hayati tehlike oluşur?",
                    options: [
                        "A) 5",
                        "B) 10",
                        "C) 15",
                        "D) 20"
                    ],
                    correctAnswer: "D"
                ),
                Question(
                    text: "Park edilmiş araçta aşağıdakilerden hangisinin yapılmasına gerek yoktur?",
                    options: [
                        "A) El freninin çekilmesine",
                        "B) Motorun durdurulmasına",
                        "C) Park lambasının yakılmasına",
                        "D) Yol eğimli ise uygun vitese takılmasına"
                    ],
                    correctAnswer: "C"
                ),
                Question(
                    text: "Araç hareket hâlinde iken ayağın debriyaj (kavrama) pedalının üzerinde devamlı durması hâlinde aşağıdakilerden hangisi olur?",
                    options: [
                        "A) Araç daha hızlı gider.",
                        "B) Lâstikler aşınır.",
                        "C) Debriyaj (kavrama) balatası aşınır.",
                        "D) Vites kutusu (şanzıman) aşınır."
                    ],
                    correctAnswer: "C"
                ),
                Question(
                    text: "Aşağıdakilerden hangisi trafik psikolojisinin hedeflerindendir?",
                    options: [
                        "A) Trafik kazaları nedeniyle insan, araç ve çevrede meydana gelen zararı azaltmak",
                        "B) Trafikte yaya, hasta ve engellilere zorluk çıkarmak",
                        "C) Stresli olarak araç kullanmayı teşvik etmek",
                        "D) Olumsuz kişilik özellikleri kazandırmak"
                    ],
                    correctAnswer: "A"
                )
            ]
        default:
            return [] // Diğer günler için boş liste
        }
    }
    
    var body: some View {
        ScrollView {
            let dailyQuestions = getQuestionsForDay(day)
            if dailyQuestions.isEmpty {
                Text("Bu gün için henüz soru eklenmemiş")
                    .padding()
            } else {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(Array(dailyQuestions.enumerated()), id: \.offset) { index, question in
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Soru \(index + 1)")
                                .font(.headline)
                            
                            Text(question.text)
                                .padding(.bottom, 5)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                ForEach(question.options, id: \.self) { option in
                                    Text(option)
                                }
                            }
                            .padding(.leading)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
        .navigationTitle("\(day) Ocak 2025")
    }
}

struct MonthDetailView: View {
    let year: Int
    let month: Int
    
    var body: some View {
        Text("\(year) yılı \(month). ay sınav soruları gelecek")
            .navigationTitle("\(year) - \(month). Ay Sınavı")
    }
}

#Preview {
    ContentView()
}
