//
//  AnalysisView.swift
//  Simple Spending Tracker
//
//  Created by James Hart on 11/28/22.
//

import SwiftUI

var food: Double = 0.0
var gas: Double = 0.0
var groceries: Double = 0.0
var luxuries: Double = 0.0
var miscellaneous: Double = 0.0
var total: Double = 0.0

struct AnalysisView: View {
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Food: $" + twoDecimals(number: food))
            Text("Gas: $" + twoDecimals(number: gas))
            Text("Groceries: $" + twoDecimals(number: groceries))
            Text("Luxuries: $" + twoDecimals(number: luxuries))
            Text("Miscellaneous: $" + twoDecimals(number: miscellaneous))
            ZStack{
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color.yellow)
                    .padding([.leading, .bottom, .trailing])
                    .frame(width:250, height: 60)
                Text("Total: $" + twoDecimals(number: total))
                    .padding(.bottom)
                   
            }
        }
        
    }
}


struct AnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        AnalysisView()
    }
}


func twoDecimals(number: Double) -> String{
    return String(format: "%.2f", number)
}
