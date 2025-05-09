import SwiftUI

struct Kasim_2019View: View {
    var body: some View {
        let questions = [
            Question(
                text: "Aşağıdakilerden hangisi arızalı aracı başka bir araç çekerken dikkat edilmesi gereken kurallardan biridir?",
                options: [
                    "A) Her iki aracın yüklü olması",
                    "B) Çekilen aracın sürücü yönetiminde olması",
                    "C) Her iki aracın taşıma sınırlarının eşit olması",
                    "D) Çekilen aracın yüklü, çeken aracın boş olması"
                ],
                correctAnswer: "B"
            ),
            Question(
                text: "Aşağıdakilerden hangisi motorun parçasıdır?",
                options: [
                    "A) Rot",
                    "B) Silindir bloğu",
                    "C) Şaft",
                    "D) Direksiyon mili"
                ],
                correctAnswer: "B"
            ),
            Question(
                text: "Kara yolunun genel olarak taşıt trafiğince kullanılan kısmına ne ad verilir?",
                options: [
                    "A) Banket",
                    "B) Terminal",
                    "C) Hemzemin geçit",
                    "D) Taşıt yolu (Kaplama)"
                ],
                correctAnswer: "D"
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
            ),
            Question(
                text: "Tehlikenin olmadığı kaza yerinde, boyun yaralanması olan yaralı hangi uygulamadan sonra araçtan çıkartılır?",
                options: [
                    "A) Boynuna boyunluk takıldıktan sonra",
                    "B) Boyun hareketleri yaptırıldıktan sonra",
                    "C) Boyun ağrılarını dindirici ilaç verildikten sonra",
                    "D) Boyun bölgesine masaj yapılıp, oturur şekilde"
                ],
                correctAnswer: "A"
            ),
            Question(
                text: "Çok şeritli yollarda gidişe ayrılan şeritlerden hangisi devamlı olarak işgal edilemez?",
                options: [
                    "A) En sağdaki",
                    "B) Ortadaki",
                    "C) En soldaki",
                    "D) Orta ile en sağdaki"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Aşağıdakilerden hangisi, solunum yolu tıkanıklığı olan bir kazazedenin tam tıkanma yaşadığını gösteren belirtilerden biri değildir?",
                options: [
                    "A) Konuşabilmesi",
                    "B) Renginin morarması",
                    "C) Nefes almasının durması",
                    "D) Acı çekip ellerini boynuna götürmesi"
                ],
                correctAnswer: "A"
            ),
            Question(
                text: "Dizel motorlarda kullanılan ısıtma bujilerinin görevi nedir?",
                options: [
                    "A) Ateşleme yapmak",
                    "B) Motora giren havayı temizlemek",
                    "C) Motor soğutma suyunun sıcaklığını ölçmek",
                    "D) Soğuk havalarda silindir içindeki havayı ısıtmak"
                ],
                correctAnswer: "D"
            ),
            Question(
                text: "Radyatör hortumlarında çatlaklar varsa ne yapılır?",
                options: [
                    "A) Bantlanır",
                    "B) Yapıştırılır",
                    "C) Değiştirilir",
                    "D) İple sarılır"
                ],
                correctAnswer: "C"
            ),
            Question(
                text: "Çekilen aracın freni bozuksa, çeken ve çekilen araçlar arasındaki bağlantı uzunluğu en fazla kaç metre olmalıdır?",
                options: [
                    "A) 1",
                    "B) 2",
                    "C) 3",
                    "D) 4"
                ],
                correctAnswer: "A"
            ),
            Question(
                text: "Taşıtlarda kullanılan 'Kararmalı Dikiz Aynaları' ışık huzmesi karşısında otomatik olarak koyulaşırlar. Bu sistemin sürücüye sağladığı avantaj aşağıdakilerden hangisidir?",
                options: [
                    "A) Göz kamaşmasını önlemek",
                    "B) Direksiyon döndürme kuvvetini azaltmak",
                    "C) Diğer taşıtlar tarafından daha iyi görülmek",
                    "D) Gaza basmadan aracın sabit bir hızda gitmesini sağlamak"
                ],
                correctAnswer: "A"
            ),
            Question(
                text: "Araçlardaki egzoz susturucusu için aşağıdakilerden hangisi doğrudur?",
                options: [
                    "A) Kış aylarında yakıttan tasarruf sağlar",
                    "B) Gürültü kirliliğini azaltmaya yardımcı olur",
                    "C) Yaz aylarında kullanılması motora zarar verir",
                    "D) Motor hararet yaptığında çıkarılması uygundur"
                ],
                correctAnswer: "B"
            ),
            Question(
                text: "120 Km hızla giden bir otomobilin öndeki araç ile olan takip mesafesi en az kaç metre olmalıdır?",
                options: [
                    "A) 60",
                    "B) 70",
                    "C) 80",
                    "D) 30"
                ],
                correctAnswer: "A"
            ),
            Question(
                text: "Aşağıdakilerden hangisi çevre kirliliğini önleme açısından olumlu bir davranıştır?",
                options: [
                    "A) Uygun vitesle seyredilmesi",
                    "B) Araca aşırı yük ve yolcu alınması",
                    "C) Aracın gereksiz yere rölantide çalıştırılması",
                    "D) Aracın normalden düşük motor devriyle sürülmesi"
                ],
                correctAnswer: "A"
            )
        ]
        
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Kasım 2019 Ehliyet Sınav Soruları")
                    .font(.title)
                    .padding()
                
                QuestionView(questions: questions, examDate: "Kasım 2019")
            }
        }
        .navigationTitle("Kasım2019")
    }
}

#Preview {
    Kasim_2019View()
}
