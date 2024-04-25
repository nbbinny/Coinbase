//
//  PortfolioManager.swift
//  Coinbase
//
//  Created by Norah Binny on 4/22/24.
//

import Foundation
class PortfolioManager: ObservableObject {
    @Published var portfolio: [Crypto] = []
    
    static let shared = PortfolioManager()
    
    func addToPortfolio(crypto: Crypto, amount: Int) {
        if let index = portfolio.firstIndex(where: { $0.id == crypto.id }) {
            portfolio[index].quantity += amount
        } else {
            var newCrypto = crypto
            newCrypto.quantity = amount
            portfolio.append(newCrypto)
        }
    }
}

