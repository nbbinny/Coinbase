//
//  BuyView.swift
//  Coinbase
//
//  Created by Norah Binny on 4/21/24.
//
import SwiftUI
import Foundation


struct BuyView: View {
    let cryptos = [
        Crypto(id: 1, symbol: "ETH", name: "Ethereum", price: "$3000", quantity: 0),
        Crypto(id: 2, symbol: "BTC", name: "Bitcoin", price: "$50000", quantity: 0)
    ]
    
    @State private var selectedAmount = 1
    @State private var selectedCrypto: Crypto?
    
    var body: some View {
        NavigationView {
            List(cryptos, id: \.id) { crypto in
                VStack(alignment: .leading) {
                    Text(crypto.symbol + " - " + crypto.name)
                        .font(.headline)
                    Text("Price: " + crypto.price)
                        .font(.subheadline)
                    Picker("Select Amount", selection: $selectedAmount) {
                        ForEach(1..<11, id: \.self) { amount in
                            Text("\(amount)")
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(height: 120)
                    Button(action: {
                        PortfolioManager.shared.addToPortfolio(crypto: crypto, amount: selectedAmount)
                    }) {
                        Text("Buy")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                }
            }
            .navigationTitle("Buy Crypto")
        }
    }
}


struct BuyPreview: PreviewProvider {
    static var previews: some View {
        BuyView()
    }
}

