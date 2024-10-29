//
//  PreviewData.swift
//  XpenseTracker
//
//  Created by Jayadi Kurniawan on 27/10/24.
//

import Foundation

// files under the Preview Content folder won't be included in the production to reduce the bundle size

var transactionPreviewData = Transaction(id: 1, date: "10/27/2024", institution: "Visa", account: "Dana", merchant: "Es Kul Kul Miau Miau", amount: 10000, type: "debit", categoryId: 808, category: "Food", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
