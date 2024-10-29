//
//  Extensions.swift
//  XpenseTracker
//
//  Created by Jayadi Kurniawan on 27/10/24.
//

import Foundation
import SwiftUI

extension Color {
    static let customBackground = Color("Background")
    static let customIcon = Color("Icon")
    static let customText = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter {
    // static to make sure only one instance of this function
    static let allNumericUSA: DateFormatter = {
        print("Initializing date format")
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yy"
        
        return formatter
    }()
}

extension String {
    func dateParse() -> Date {
        guard let parseDate = DateFormatter.allNumericUSA.date(from: self) else { return Date() }
        
        return parseDate
    }
}

extension Date {
    func formatted() -> String {
        return self.formatted(.dateTime.year().month().day())
    }
}

extension Double {
    func roundedTo2Digits() -> Double {
        return (self * 100).rounded() / 100
    }
}
