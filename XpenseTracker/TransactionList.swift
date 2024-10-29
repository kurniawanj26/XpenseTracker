//
//  TransactionList.swift
//  XpenseTracker
//
//  Created by Jayadi Kurniawan on 28/10/24.
//

import SwiftUI

struct TransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            List {
                // MARK: Transaction Groups
                ForEach(Array(transactionListVM.groupTransactionByMonth()), id: \.key) { month, transaction in
                    Section {
                        // MARK: Transaction List
                        ForEach(transaction) { transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        // MARK: Transaction Month
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
            .listStyle(.plain)
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TransactionList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    
    static var previews: some View {
        NavigationStack {
            TransactionList()
                .environmentObject(transactionListVM)
        }
    }
}
