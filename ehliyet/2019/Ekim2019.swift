import SwiftUI

struct Ekim_2019View: View {
    var body: some View {
        let questions = [
            // Önceki sorular aynen kalacak, devamına yeni soruları ekliyorum
            
            Question(
                text: "Araçların bir mülke girip çıkması için yapılmış olan yolun, kara yoluna bağlanan ve kara yolu sınır çizgisi içinde kalan kısmına ne ad verilir?",
                options: [
                    "A) Şerit",
                    "B) Banket",
                    "C) Geçiş yolu",
                    "D) Bağlantı yolu"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Aşağıdakilerden hangisi güvenli sürücülük için alınması gereken önlemlerdendir?",
                options: [
                    "A) Sürüş öncesi alkollü içki içilmesi",
                    "B) Sürüş esnasında elde cep telefonu ile konuşulması",
                    "C) Yol şartlarına göre kontrol edilebilecek hızda araç kullanılması",
                    "D) Trafik yoğunluğu fazla olan güzergâhların tercih edilmesi"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Akünün artı (+) kutup başı, eksi (-) kutup başına göre nasıldır?",
                options: [
                    "A) Daha kısa",
                    "B) Daha uzun",
                    "C) Daha ince",
                    "D) Daha kalın"
                ],
                correctAnswer: "B"
            ),
            Question(
                text: "Aşağıdakilerden hangisi öfke yönetiminin amaçlarındandır?",
                options: [
                    "A) Öfkeyi bastırmak ya da yok etmek",
                    "B) Kızgınlığa yol açan olayları değiştirmek",
                    "C) İnsanlar ya da olaylar karşısında gösterilen içsel ve dışsal tepkilerde kontrolsüz davranılmasını sağlamak",
                    "D) Kızgınlığın ya da öfkenin yol açtığı duygusal ve fizyolojik tepkileri azaltmak"
                ],
                correctAnswer: "D"
            ),
            Question(
                text: "Aşağıdakilerden hangisi trafik kazasına karışan sürücülerin uyması veya yapması gereken hususlardan biridir?",
                options: [
                    "A) Kaza tespit tutanağı düzenlemek",
                    "B) Kazaya ait kanıt ve izleri değiştirmemek",
                    "C) Yolu trafiğe açmak",
                    "D) Yolu trafiğe kapatmak"
                ],
                correctAnswer: "B"
            ),
            Question(
                text: "Aşağıdakilerden hangisine koltuk ferdi kaza sigortası yaptırılması zorunludur?",
                options: [
                    "A) Otomobil",
                    "B) Çekici",
                    "C) Otobüs",
                    "D) Kamyonet"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Periyodik bakımda aşağıdakilerden hangisinin değiştirilmemesi araç motorunun çalışmasını olumsuz etkiler?",
                options: [
                    "A) Polen filtresinin",
                    "B) Yağ filtresinin",
                    "C) Araç lastiklerinin",
                    "D) Cam sileceklerinin"
                ],
                correctAnswer: "B"
            ),
            Question(
                text: "Aşağıdakilerden hangisi solunum durmasının belirtilerinden biri değildir?",
                options: [
                    "A) Dudakların morarması",
                    "B) Göz bebeklerinin küçülmesi",
                    "C) Göğüs hareketlerinin kaybolması",
                    "D) Nefes alma ve verme sesinin duyulamaması"
                ],
                correctAnswer: "B"
            ),
            Question(
                text: "İnsan vücudunda ağız, yemek borusu, mide, ince ve kalın bağırsakların yer aldığı sistem hangisidir?",
                options: [
                    "A) Solunum sistemi",
                    "B) Dolaşım sistemi",
                    "C) Sindirim sistemi",
                    "D) Sinir sistemi"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Aşağıdakilerden hangisi virajlarda çekici tekerleklerin farklı hızlarda dönmesini sağlar?",
                options: [
                    "A) Amortisör",
                    "B) Direksiyon",
                    "C) Diferansiyel",
                    "D) Kilometre sayacı"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Kara yollarında can ve mal güvenliği yönünden; trafik düzeninin sağlanması ve alınacak önlemlerin belirlenmesi amacıyla çıkarılan kanun aşağıdakilerden hangisidir?",
                options: [
                    "A) Medeni Kanun",
                    "B) Türk Ceza Kanunu",
                    "C) Karayolları Trafik Kanunu",
                    "D) 2872 Sayılı Çevre Kanunu"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Motordaki yağ basıncını sürücüye bildiren gösterge aşağıdakilerden hangisidir?",
                options: [
                    "A) Yağ göstergesi",
                    "B) Yakıt göstergesi",
                    "C) Hararet göstergesi",
                    "D) Motor devir göstergesi"
                ],
                correctAnswer: "A"
            ),
            Question(
                text: "Aşağıdaki kemiklerden hangisinde kırık olması durumunda kazazedenin göğüs bölgesine yapılan baskıda şiddetli ağrı, nefes almada güçlük ve öksürük belirtileri görülür?",
                options: [
                    "A) Kol kemiği",
                    "B) Kalça kemiği",
                    "C) Uyluk kemiği",
                    "D) Kaburga kemiği"
                ],
                correctAnswer: "D"
            ),
            Question(
                text: "Kara Yolları Trafik Kanununa göre 'M,A1, A2, A, B1, B, BE, F ve G' sınıfı sürücü belgeleri kaç yıl süreyle geçerlidir?",
                options: [
                    "A) 10",
                    "B) 15",
                    "C) 20",
                    "D) 25"
                ],
                correctAnswer: "A"
            ),
            Question(
                text: "Aşağıdakilerden hangisi aracı istenilen yöne sevk eder?",
                options: [
                    "A) Marş sistemi",
                    "B) Yağlama sistemi",
                    "C) Direksiyon sistemi",
                    "D) Aydınlatma sistemi"
                ],
                correctAnswer: "C"
            )
        ]
        
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Ekim 2019 Ehliyet Sınav Soruları")
                    .font(.title)
                    .padding()
                
                QuestionView(questions: questions, examDate: "3 Aralık 2019")
            }
        }
        .navigationTitle("Ekim 2019")
    }
}

#Preview {
    Ekim_2019View()
}
