import SwiftUI


struct Aralik_2019View: View {
    let questions = [
        Question(
            text: "Kara yollarında gerekli düzenleme ve işaretlemeleri aşağıdakilerden hangisi yapar?",
            options: [
                "A) Emniyet Genel Müdürlüğü",
                "B) Karayolları Genel Müdürlüğü",
                "C) Trafik Kazalarını Önleme Derneği",
                "D) Bilim, Sanayi ve Teknoloji Bakanlığı"
            ],
            correctAnswer: "B"
        ),
        Question(
            text: "Boyun, sırt ve bel omurları kırıklarında, yaralı uygun şekilde tespit ve nakil edilmezse aşağıdakilerden hangisinin olması beklenir?",
            options: [
                "A) Vücudun bir bölgesinde felç oluşması",
                "B) Nabız atışlarının sürekli hızlanması",
                "C) Bulantı ve kusmanın olması",
                "D) Vücut sıcaklığının artması"
            ],
            correctAnswer: "A"
        ),
        Question(
            text: "Aşağıdakilerden hangisi silindire giren havayı temizler?",
            options: [
                "A) Benzin filtresi",
                "B) Hava filtresi",
                "C) Yağ filtresi",
                "D) Su filtresi"
            ],
            correctAnswer: "B"
        ),
        Question(
            text: "Aşağıdakilerden hangisinin aşınması araçta direksiyon boşluğunun fazlalaşmasına neden olur?",
            options: [
                "A) Vites kutusunun",
                "B) Pistonların",
                "C) Krank milinin",
                "D) Rot başlarının"
            ],
            correctAnswer: "D"
        ),
        Question(
            text: "Kara yolu ile demir yolunun aynı seviyede kesiştiği bariyerli veya bariyersiz geçitlere ne ad verilir?",
            options: [
                "A) Okul geçidi",
                "B) Yaya geçidi",
                "C) Hemzemin geçit",
                "D) Rampalı geçit"
            ],
            correctAnswer: "C"
        ),
        Question(
            text: "Araç üzerinde bir elektrikli alıcı çalışmadığında ilk bakılacak yer aşağıdakilerden hangisi olmalıdır?",
            options: [
                "A) Motordaki yağ seviyesi",
                "B) Ateşleme sistemindeki ilgili buji",
                "C) Sigorta panelindeki ilgili sigorta",
                "D) Yakıt deposundaki yakıt seviyesi"
            ],
            correctAnswer: "C"
        ),
        Question(
            text: "Akünün kutup başları araca ters bağlanırsa aşağıdakilerden hangisi arızalanır?",
            options: [
                "A) Su pompası",
                "B) Şanzuman dişlileri",
                "C) Alternatör diyotları",
                "D) Diferansiyel dişlileri"
            ],
            correctAnswer: "C"
        ),
        Question(
            text: "Kara yolunda, motorlu veya motorsuz bir aracı veya taşıtı sevk ve idare eden kişiye ne ad verilir?",
            options: [
                "A) Şoför",
                "B) Sürücü",
                "C) İşleten",
                "D) Araç sahibi"
            ],
            correctAnswer: "B"
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
            text: "Kırık, çıkık, burkulma gibi kemik ve eklemi ilgilendiren olaylarda ilk yardımcının temel hedefi ne olmalıdır?",
            options: [
                "A) Sorunlu bölgeyi hareketsiz duruma getirerek kazazedenin durumunun kötüleşmesini önlemek",
                "B) Kazazedenin oturması ya da sağa sola kımıldamasına izin vermek",
                "C) Kol ya da bacakta bozulmuş şekli düzeltmeye çalışmak",
                "D) Kırık bölgenin hareket ettirilmesini sağlamak"
            ],
            correctAnswer: "A"
        ),
        Question(
            text: "Bebeklerde soluk yoluna herhangi bir cismin kaçması hâlinde, çıkartmak için ilk yardım olarak aşağıdakilerden hangisi uygulanmalıdır?",
            options: [
                "A) Yüz aşağıda olacak şekilde kol üzerine yatırılır ve kürek kemiklerinin arasına vurulur.",
                "B) Sert bir yere sırtüstü yatırılır ve boyun üzerine baskı yapılır.",
                "C) Sırtüstü yatırılıp ayakları yükseltilir.",
                "D) Şekerli su içirilir."
            ],
            correctAnswer: "A"
        ),
        Question(
            text: "Aşağıdakilerden hangisi çevre kirliliğine yol açar?",
            options: [
                "A) Mümkün olduğunca otobüs, vapur, tren, metro gibi toplu taşıma araçlarının kullanılması",
                "B) Bakımsız araçlardan yere (yağ, su vb.) sızıntı olması",
                "C) Tehlikeli maddelerin usulüne uygun taşınması",
                "D) Araç bakımlarının sürelerinde yapılması"
            ],
            correctAnswer: "B"
        ),
        Question(
            text: "Aşağıdakilerden hangisi aracın egzoz dumanının siyah renkte çıkmasına neden olur?",
            options: [
                "A) Motor yağının kirlenmesi",
                "B) Motor yağının kalınlaşması",
                "C) Karışım oranının bozulması",
                "D) Motorun çalışma sıcaklığına ulaşması"
            ],
            correctAnswer: "C"
        ),
        Question(
            text: "Araçlarda ilk yardım çantası hangi amaçla bulundurulur?",
            options: [
                "A) Trafik denetimlerinde göstermek",
                "B) Araç muayenelerinde göstermek",
                "C) Kazalarda ilk yardımda kullanmak",
                "D) Araç donanımını tamamlamak"
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
            text: "Dinlenme hâlindeki sağlıklı yetişkin bir insan, ortalama olarak dakikada kaç defa nefes alıp verir?",
            options: [
                "A) 5 - 10",
                "B) 12 - 20",
                "C) 25 - 30",
                "D) 35 - 40"
            ],
            correctAnswer: "B"
        ),
        Question(
            text: "Yerleşim yerleri içinde trafiği düzenleme amacı ile yer işaretlemelerini, trafik işaret levhalarını, ışıklı ve sesli trafik işaretlerini temin ve tesis etmek, bunların devamlılığını ve işlerliğini sağlamak, aşağıdaki kuruluşlardan hangisinin görevidir?",
            options: [
                "A) Belediyelerin",
                "B) Emniyet Genel Müdürlüğünün",
                "C) Kara Yolları Genel Müdürlüğünün",
                "D) Ulaştırma, Denizcilik ve Haberleşme Bakanlığının"
            ],
            correctAnswer: "A"
        ),
        Question(
            text: "I- Alkol veya madde bağımlılığı II- Eğitim eksikliği ve tedbirsizlik III- Tehlikeye atılmaya hazır kişilik yapısı. Yukarıdakilerden hangileri kazalara yol açan faktörlerdendir?",
            options: [
                "A) Yalnız I",
                "B) I ve II",
                "C) II ve III",
                "D) I, II ve III"
            ],
            correctAnswer: "D"
        ),
        Question(
            text: "Kara yolu aşağıdakilerin hangisinde doğru tanımlanmıştır?",
            options: [
                "A) Trafik için hayvanların ve araçların yararlandığı alanlardır.",
                "B) Trafik için kamunun yararlanmasına açık olan arazi şeridi, köprüler ve alanlardır.",
                "C) Trafik için araçların yararlanmasına uygun şeritlerdir.",
                "D) Trafik için yapılmış özel amaçlı arazi parçalarıdır."
            ],
            correctAnswer: "B"
        ),
        Question(
            text: "Yetişkinlere yapılan dış kalp masajı uygulamasıyla ilgili verilenlerden hangisi doğrudur?",
            options: [
                "A) Göğüs kemiğinin alt ve üst ucunun tespit edilerek üst yarısına orta ve yüzük parmağının dik olarak yerleştirilmesi",
                "B) Basıyı tam uygulayabilmek için kazazedeye uzak mesafede durulması",
                "C) Göğüs kemiğine bası uygulama ve kaldırmanın ritmik olarak yapılması",
                "D) Göğüs kemiği 1 cm çökecek şekilde bası uygulanması"
            ],
            correctAnswer: "C"
        ),
        Question(
            text: "Arızalanan aracı, diğer araç sürücülerinin daha iyi görmesi için aşağıdaki önlemlerden hangisinin alınması gerekir?",
            options: [
                "A) Aracın ön ve arkasına beyaz renkte taş dizilmelidir.",
                "B) Aracın ön kısmına 150 metre mesafeden görülecek şekilde yeşil ışıklı yansıtıcı konulmalıdır.",
                "C) Aracın ön ve arkasına 150 metre mesafeden açıkça görülecek kırmızı yansıtıcı veya kırmızı ışıklı cihaz konulmalıdır.",
                "D) Aracın ön ve arkasına devrilmeyecek biçimde teneke veya bidon gibi malzemeler konulmalıdır."
            ],
            correctAnswer: "C"
        ),
        Question(
            text: "Bilinci kapalı, solunumu ve dolaşımı olmayan kazazedenin omuriliğine zarar vermeden araç içinden çıkarılması için aşağıdaki tekniklerden hangisi kullanılmalıdır?",
            options: [
                "A) Rentek manevrası",
                "B) Heimlich manevrası",
                "C) Ayak bileklerinden sürükleme yöntemi",
                "D) Koltuk altından tutarak sürükleme yöntemi"
            ],
            correctAnswer: "A"
        ),
        Question(
            text: "Taşıtlardaki süspansiyon sisteminin görevi aşağıdakilerden hangisidir?",
            options: [
                "A) Yakıt tüketimini azaltmak",
                "B) Aracın dönüşlerini sağlamak",
                "C) Akünün şarj olmasını sağlamak",
                "D) Titreşimleri, salınımları ve ani şokları sönümlemek"
            ],
            correctAnswer: "D"
        ),
        Question(
            text: "Otomobillerde, mekanizmayı oluşturan motor, tekerlek, şasi vb. bölümlerin dışında kalan, görünen dış bölüme ne ad verilir?",
            options: [
                "A) Kavrama",
                "B) Karoseri",
                "C) Manifold",
                "D) Süspansiyon"
            ],
            correctAnswer: "B"
        ),
        Question(
            text: "Aşağıdakilerden hangisi balanssız tekerleğin araç üzerindeki etkilerinden biridir?",
            options: [
                "A) Motorun hararet yapması",
                "B) Motor yağına su karışması",
                "C) Manifoldlarda kaçakların oluşması",
                "D) Tekerlek yataklarının kısa sürede aşınması"
            ],
            correctAnswer: "D"
        )
    ]
    
    var body: some View {
        QuestionView(questions: questions, examDate: "Aralık 2019")
    }
}
