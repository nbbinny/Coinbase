//
//  ContentView.swift
//  Coinbase
//
//  Created by Norah Binny on 4/18/24.
//

import SwiftUI

struct TradeView: View {
    // Sample data for trade history
    let history = [
        ("Purchased", "0.25", "Bitcoin", "BTC"),
        ("Sold", "0.5", "Ethereum", "ETH"),
        ("Purchased", "1.0", "Cardano", "ADA"),
        ("Sold", "2.0", "Ripple", "XRP"),
        ("Purchased", "0.75", "Solana", "SOL")
    ]

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Trade")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                    Spacer()
                }
                
                HStack(spacing: 40) {
                    NavigationLink(destination: BuyView()) {
                        VStack {
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                )
                            Text("Buy")
                                .foregroundColor(.black)
                        }
                    }
                    
                    VStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 50, height: 50)
                            .overlay(
                                Image(systemName: "minus")
                                    .foregroundColor(.white)
                            )
                        Text("Sell")
                            .foregroundColor(.black)
                    }
                    
                    VStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 50, height: 50)
                            .overlay(
                                Image(systemName: "arrow.triangle.2.circlepath")
                                    .foregroundColor(.white)
                            )
                        Text("Convert")
                            .foregroundColor(.black)
                    }
                    
                    VStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 50, height: 50)
                            .overlay(
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.white)
                            )
                        Text("More")
                            .foregroundColor(.black)
                    }
                }
                .padding() // Add padding around the HStack for better spacing
                
                // Enhanced and more appealing history section
                historySection

                Spacer()
            }
            .navigationTitle("Trade") // Sets the navigation bar title
            .navigationBarTitleDisplayMode(.inline) // Makes the title inline in the navigation bar
        }
    }

    private var historySection: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("History")
                .font(.headline)
                .foregroundColor(.primary)
                .padding()

        }
        .padding([.leading, .trailing, .bottom])
        .cornerRadius(10)  // Rounded corners for the history section
    }
}

struct TradeView_Previews: PreviewProvider {
    static var previews: some View {
        TradeView()
    }
}
