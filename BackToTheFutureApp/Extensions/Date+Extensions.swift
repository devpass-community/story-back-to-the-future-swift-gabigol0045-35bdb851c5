import Foundation

extension Date {
    
    func dateAfter(years: Int) -> Date? {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = years
        let futureDate = calendar.date(byAdding: .year, value: years, to: self)
        return futureDate
    }
    
    func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let dateString = dateFormatter.string(from: self)
        return dateString
    }
}
