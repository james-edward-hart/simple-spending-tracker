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
var Misc: Double = 0.0

struct AnalysisView: View {
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Food: $\(food)")
            Text("gas: $\(gas)")
            Text("groceries: $\(groceries)")
            Text("luxeries: $\(luxuries)")
            Text("Miscellaneous: $\(Misc)")
        }
        
    }
}


struct AnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        AnalysisView()
    }
}
