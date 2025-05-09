import SwiftUI

struct Temmuz_2019View: View {
    var body: some View {
        let questions = [
            // Önceki sorular aynen kalacak, devamını ekliyorum:
            
            Question(
                text: "Ciddi yaralanmalarda yapılması gereken doğru ilk yardım uygulamaları hangileridir?\n\nI- Yara içi kurcalanır.\nII- Saplanan yabancı cisim çıkarılmaz.\nIII- Yaranın üzeri kapatılarak tıbbi yardım istenir.",
                options: [
                    "A) Yalnız I",
                    "B) I ve II", 
                    "C) II ve III",
                    "D) I, II ve III"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Aksine bir işaret yoksa, eğimsiz iki yönlü dar yolda, otomobil ile iş makinesinin karşılaşması hâlinde, hangisi diğerine yol vermelidir?",
                options: [
                    "A) İş makinesi, otomobile",
                    "B) Otomobil, iş makinesine",
                    "C) Şeridi daralmış olan, diğerine",
                    "D) Dingil ağırlığı az olan, diğerine"
                ],
                correctAnswer: "B"
            ),
            Question(
                text: "Aşağıdakilerden hangisi araçtaki ilk yardım çantasında bulundurulmalıdır?",
                options: [
                    "A) Ağrı kesici ilaç",
                    "B) Yara merhemi",
                    "C) Üçgen sargı bezi",
                    "D) Serum"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Sürücüler neden ilk yardım bilgi ve becerisine sahip olmalıdır?",
                options: [
                    "A) Çevredeki bulaşıcı hastalıklardan korunmak için",
                    "B) Hastaları iyileştirecek tıbbi tedaviyi uygulamak için",
                    "C) Kazalarda hayat kurtarıcı ilk müdahaleleri yapabilmek için",
                    "D) Kendisinin ve yakınlarının sağlığını korumak için"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Aşağıdakilerden hangisi motorun tam güç verecek şekilde çalışma sıcaklığında kalmasını sağlar?",
                options: [
                    "A) Soğutma sistemi",
                    "B) Ateşleme sistemi",
                    "C) Aydınlatma sistemi",
                    "D) Göstergeler sistemi"
                ],
                correctAnswer: "A"
            ),
            Question(
                text: "Aşağıdakilerden hangisi şok belirtilerindendir?",
                options: [
                    "A) Nabız atışının güçlü olması",
                    "B) Cildin kuru ve sıcak olması",
                    "C) Kan basıncının düşmesi",
                    "D) Zihinsel aktivitenin artması"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Aşağıdakilerden hangisi enjektör arızasının bir sonucudur?",
                options: [
                    "A) Motorun zor çalışması",
                    "B) Motorun iyi soğutulamaması",
                    "C) Yağ lambasının motor çalışınca sönmemesi",
                    "D) Şarj lambasının motor çalışınca sönmemesi"
                ],
                correctAnswer: "A"
            ),
            Question(
                text: "Bir otobüs, eğimsiz iki yönlü dar yolda aksine işaret yoksa aşağıdakilerden hangisine geçiş kolaylığı sağlamalıdır?",
                options: [
                    "A) Kamyona",
                    "B) Kamyonete",
                    "C) İş makinesine",
                    "D) Lastik tekerlekli traktöre"
                ],
                correctAnswer: "D"
            ),
            Question(
                text: "Kanlarındaki alkol miktarı kaç promilin üzerinde olan hususi otomobil sürücülerinin kara yolunda araç sürmesi yasaktır?",
                options: [
                    "A) 0,20",
                    "B) 0,30",
                    "C) 0,40",
                    "D) 0,50"
                ],
                correctAnswer: "D"
            ),
            Question(
                text: "Trafikte öfke duygusuna kapılan sürücülerde görülme olasılığı yüksek olan durumlar hangileridir?\n\nI. Dikkatin dağılması\nII. Kural ihlallerinin artması\nIII. Sabırsızlık ve tahammülsüzlüğün azalması",
                options: [
                    "A) Yalnız I",
                    "B) I ve II",
                    "C) II ve III",
                    "D) I, II ve III"
                ],
                correctAnswer: "B"
            )
        ]
        
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Temmuz 2019 Ehliyet Sınav Soruları")
                    .font(.title)
                    .padding()
                
                QuestionView(questions: questions, examDate: "Temmuz 2019")
            }
        }
        .navigationTitle("Temmuz 2019")
    }
}

#Preview {
    Temmuz_2019View()
}
