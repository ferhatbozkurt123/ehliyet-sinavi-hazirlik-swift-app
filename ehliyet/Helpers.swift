import Foundation

struct Helpers {
    static func getMonthName(_ month: Int) -> String {
        let months = [
            "Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran",
            "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"
        ]
        return months[month - 1]
    }
} 