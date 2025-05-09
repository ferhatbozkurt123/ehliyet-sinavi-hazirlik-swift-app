# Ehliyet Sınav Hazırlık Uygulaması

Bu uygulama, ehliyet sınavına hazırlanan adaylar için geliştirilmiş bir iOS uygulamasıdır. Uygulama, geçmiş yıllara ait sınav sorularını içerir ve kullanıcıların sınavlara hazırlanmasına yardımcı olur.

## Özellikler

- 2019'dan 2025'e kadar olan sınav sorularına erişim
- Yıllara göre kategorize edilmiş sorular
- Modern ve kullanıcı dostu arayüz
- Kolay navigasyon
- Güncel sınav yılı vurgusu

## Gereksinimler

- iOS 15.0 veya üzeri
- Xcode 15.0 veya üzeri
- Swift 5.0 veya üzeri

## Kurulum

1. Projeyi klonlayın:
```bash
git clone [repo-url]
```

2. Xcode'da projeyi açın:
```bash
cd ehliyet
open ehliyet.xcodeproj
```

3. Projeyi derleyin ve çalıştırın:
```bash
xcodebuild -scheme ehliyet -destination 'platform=iOS Simulator,name=iPhone 16 Pro Max' build
```

## Kullanım

1. Ana ekranda yıllara göre kategorize edilmiş sınav sorularını göreceksiniz
2. İstediğiniz yıla tıklayarak o yıla ait sınav sorularına erişebilirsiniz
3. Güncel yıl mavi renkle vurgulanmıştır
4. Her yıl için ayrı bir görünüm sunulmaktadır

## Geliştirme

Bu uygulama SwiftUI kullanılarak geliştirilmiştir. Proje yapısı:

- `ExamQuestionsView.swift`: Ana görünüm ve yıl seçimi
- `Year2023View.swift`: 2023 yılı sınav soruları
- `Year2024View.swift`: 2024 yılı sınav soruları
- `Year2025View.swift`: 2025 yılı sınav soruları
- `MonthDetailView.swift`: Aylık sınav detayları

## Katkıda Bulunma

1. Bu depoyu fork edin
2. Yeni bir branch oluşturun (`git checkout -b feature/yeniOzellik`)
3. Değişikliklerinizi commit edin (`git commit -am 'Yeni özellik: Açıklama'`)
4. Branch'inizi push edin (`git push origin feature/yeniOzellik`)
5. Pull Request oluşturun

## Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Detaylar için `LICENSE` dosyasına bakın.

## İletişim

Sorularınız veya önerileriniz için [e-posta adresiniz] adresine mail atabilirsiniz. 