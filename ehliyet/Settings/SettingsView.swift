import SwiftUI
import UserNotifications

class SettingsViewModel: ObservableObject {
    @Published var showingAlert = false
    @Published var alertMessage = ""
    
    func clearAllData() {
        // UserDefaults'taki tüm verileri temizle
        if let bundleID = Bundle.main.bundleIdentifier {
            UserDefaults.standard.removePersistentDomain(forName: bundleID)
        }
        
        // Bildirim izinlerini sıfırla
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        
        showingAlert = true
        alertMessage = "Tüm veriler başarıyla temizlendi"
    }
    
    func scheduleNotifications(at time: Date, daily: Bool, weekly: Bool) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                // Günlük bildirimler
                if daily {
                    let dailyContent = UNMutableNotificationContent()
                    dailyContent.title = "Günlük Çalışma Zamanı"
                    dailyContent.body = "Bugünkü ehliyet çalışmanızı yapmayı unutmayın!"
                    dailyContent.sound = .default
                    
                    let dateComponents = Calendar.current.dateComponents([.hour, .minute], from: time)
                    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
                    
                    let request = UNNotificationRequest(
                        identifier: "dailyReminder",
                        content: dailyContent,
                        trigger: trigger
                    )
                    
                    UNUserNotificationCenter.current().add(request)
                }
                
                // Haftalık bildirimler
                if weekly {
                    let weeklyContent = UNMutableNotificationContent()
                    weeklyContent.title = "Haftalık Özet"
                    weeklyContent.body = "Bu haftaki ilerlemenizi kontrol edin!"
                    weeklyContent.sound = .default
                    
                    var dateComponents = DateComponents()
                    dateComponents.weekday = 1 // Pazar günü
                    dateComponents.hour = Calendar.current.component(.hour, from: time)
                    dateComponents.minute = Calendar.current.component(.minute, from: time)
                    
                    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
                    
                    let request = UNNotificationRequest(
                        identifier: "weeklyReminder",
                        content: weeklyContent,
                        trigger: trigger
                    )
                    
                    UNUserNotificationCenter.current().add(request)
                }
            }
        }
    }
}

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("notificationsEnabled") private var notificationsEnabled = true
    @AppStorage("fontSizeLevel") private var fontSizeLevel = 1 // 0: Küçük, 1: Orta, 2: Büyük
    
    var body: some View {
        List {
            Section(header: Text("Görünüm")) {
                Toggle(isOn: $isDarkMode) {
                    HStack {
                        Image(systemName: isDarkMode ? "moon.fill" : "sun.max.fill")
                            .foregroundColor(isDarkMode ? .purple : .orange)
                        Text("Karanlık Mod")
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Yazı Boyutu")
                    Picker("Yazı Boyutu", selection: $fontSizeLevel) {
                        Text("Küçük").tag(0)
                        Text("Orta").tag(1)
                        Text("Büyük").tag(2)
                    }
                    .pickerStyle(.segmented)
                }
            }
            
            Section(header: Text("Bildirimler")) {
                Toggle(isOn: $notificationsEnabled) {
                    HStack {
                        Image(systemName: "bell.fill")
                            .foregroundColor(.blue)
                        Text("Bildirimleri Etkinleştir")
                    }
                }
                
                if notificationsEnabled {
                    NavigationLink(destination: NotificationSettingsView()) {
                        Text("Bildirim Ayarları")
                    }
                }
            }
            
            Section(header: Text("Uygulama Hakkında")) {
                HStack {
                    Text("Versiyon")
                    Spacer()
                    Text("1.0.0")
                        .foregroundColor(.gray)
                }
                
                NavigationLink(destination: PrivacyPolicyView()) {
                    Text("Gizlilik Politikası")
                }
                
                NavigationLink(destination: TermsOfServiceView()) {
                    Text("Kullanım Koşulları")
                }
                
                Button(action: {
                    // Rate app action
                    if let url = URL(string: "itms-apps://itunes.apple.com/app/idYOUR_APP_ID") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Uygulamayı Değerlendir")
                }
            }
            
            Section(header: Text("Hesap")) {
                Button(action: {
                    viewModel.clearAllData()
                }) {
                    HStack {
                        Image(systemName: "trash")
                            .foregroundColor(.red)
                        Text("Tüm Verileri Temizle")
                            .foregroundColor(.red)
                    }
                }
            }
        }
        .navigationTitle("Ayarlar")
        .alert(isPresented: $viewModel.showingAlert) {
            Alert(
                title: Text("Bilgi"),
                message: Text(viewModel.alertMessage),
                dismissButton: .default(Text("Tamam"))
            )
        }
        .onChange(of: notificationsEnabled) { newValue in
            if newValue {
                viewModel.scheduleNotifications(
                    at: UserDefaults.standard.object(forKey: "reminderTime") as? Date ?? Date(),
                    daily: UserDefaults.standard.bool(forKey: "dailyReminder"),
                    weekly: UserDefaults.standard.bool(forKey: "weeklyReminder")
                )
            } else {
                UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
            }
        }
    }
}

struct NotificationSettingsView: View {
    @AppStorage("dailyReminder") private var dailyReminder = true
    @AppStorage("weeklyReminder") private var weeklyReminder = true
    @AppStorage("reminderTime") private var reminderTime = Date()
    
    var body: some View {
        List {
            Toggle("Günlük Hatırlatıcı", isOn: $dailyReminder)
            Toggle("Haftalık Özet", isOn: $weeklyReminder)
            
            DatePicker(
                "Hatırlatıcı Zamanı",
                selection: $reminderTime,
                displayedComponents: .hourAndMinute
            )
        }
        .navigationTitle("Bildirim Ayarları")
    }
}

struct PrivacyPolicyView: View {
    var body: some View {
        ScrollView {
            Text("Gizlilik Politikası içeriği buraya gelecek...")
                .padding()
        }
        .navigationTitle("Gizlilik Politikası")
    }
}

struct TermsOfServiceView: View {
    var body: some View {
        ScrollView {
            Text("Kullanım Koşulları içeriği buraya gelecek...")
                .padding()
        }
        .navigationTitle("Kullanım Koşulları")
    }
}

#Preview {
    NavigationView {
        SettingsView()
    }
} 