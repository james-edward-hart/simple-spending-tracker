//
//  ContentView.swift
//  Simple Spending Tracker
//
//  Created by James Hart on 11/28/22.
//

import SwiftUI



var currView: some View = HomeView()

struct HomeView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Welcome to the Simple Spending Analyzer")
                    .font(.title)
                    .multilineTextAlignment (.center)
                NavigationLink(destination: AnalysisView(), label: {
                    Text("Analyze Purchases")
                        .bold()
                        .foregroundColor(Color.black)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(lineWidth: 2)
                                .fill(Color.black)
                        )
                })
                NavigationLink(destination: PurchaseView(), label: {
                    Text("Add a Purchase")
                        .bold()
                        .foregroundColor(Color.black)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(lineWidth: 2)
                                .fill(Color.black)
                        )
                })
                
            }
            
        }
        .accentColor(Color(.label))
    }
    
    
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



