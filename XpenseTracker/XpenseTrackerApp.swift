//
//  XpenseTrackerApp.swift
//  XpenseTracker
//
//  Created by Jayadi Kurniawan on 27/10/24.
//

import SwiftUI

@main
struct XpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
