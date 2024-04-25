//
//  MyAssetsView.swift
//  Coinbase
//
//  Created by Norah Binny on 4/21/24.
//
import SwiftUI

struct MyAssetsView: View {
    // Example total balance
    let totalBalance = "$1,234.56"
    @ObservedObject var portfolioManager = PortfolioManager.shared
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
                totalBalanceLabel
                totalBalanceValue
                assetImageView
                actionButtons
                portfolioView
                Spacer()
            }
            .navigationTitle("My Assets")
            .padding([.leading, .trailing]) // Apply padding only to the sides
        }
    }
    
    private var totalBalanceLabel: some View {
        Text("Total Balance")
            .font(.title3) // Slightly larger than body text
            .foregroundColor(.gray)
    }
    
    private var totalBalanceValue: some View {
        Text(totalBalance)
            .font(.largeTitle) // Large and prominent font size
            .fontWeight(.bold) // Bold text
    }
    
    private var assetImageView: some View {
        Image("stocks")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200) // Adjust size as needed
    }
    
    private var actionButtons: some View {
        HStack(spacing: 40) { // Increased spacing for better alignment with text
            
            VStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Image(systemName: "building.columns")
                            .foregroundColor(.white)
                    )
                Text("Add Cash")
                    .foregroundColor(.black)
            }
            
            
            
            VStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Image(systemName: "banknote")
                            .foregroundColor(.white)
                    )
                Text("Cash Out")
                    .foregroundColor(.black)
            }
            
            VStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Image(systemName: "arrow.up")
                            .foregroundColor(.white)
                    )
                Text("Send")
                    .foregroundColor(.black)
            }
            
            VStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Image(systemName: "arrow.down")
                            .foregroundColor(.white)
                    )
                Text("Receive")
                    .foregroundColor(.black)
            }
        }
    }
    
    private var portfolioView: some View {
        NavigationView {
            List(portfolioManager.portfolio, id: \.id) { crypto in
                VStack(alignment: .leading) {
                    Text(crypto.name + " - " + crypto.price)
                        .font(.headline)
                    Text("Quantity: \(crypto.quantity)")
                        .font(.subheadline)
                }
            }
            .navigationTitle("Portfolio")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}
    
    
    struct MyAssetsView_Previews: PreviewProvider {
        static var previews: some View {
            MyAssetsView()
        }
    }
    
