//
//  PurchaseView.swift
//  Simple Spending Tracker
//
//  Created by James Hart on 11/29/22.
//

import SwiftUI







struct PurchaseView: View {
    
    enum Category: String, CaseIterable, Identifiable {
        case Food = "Food",
             Gas = "Gas",
             Groceries = "Groceries",
             Luxuries = "Luxuries",
             Miscellaneous = "Miscellaneous"
        var id: Self { self }
    }
    @State var selectedCategory: Category = .Food
    @State var purchaseAmount = ""
    var body: some View {
        VStack{
            Form {
                
                Picker("Category", selection: $selectedCategory) {
                    ForEach(Category.allCases) { Category in
                        Text(Category.rawValue)
                    }
                }
                TextField("Purchase Amount", text: $purchaseAmount)
                    .keyboardType(.numberPad)
                
            }
            ZStack{
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color.yellow)
                    .padding([.leading, .bottom, .trailing])
                    .frame(width:250, height: 60)
                Button("Save") {
                    addAmount(category: selectedCategory.self, amountChosen: Double(purchaseAmount) ?? 0.0)
                }
                .padding(.bottom)
                
            }
        }
    }
}




func addAmount(category: PurchaseView.Category, amountChosen: Double){
    if (category == PurchaseView.Category.Food) {
        food += amountChosen
    }
    if (category == PurchaseView.Category.Gas) {
        gas += amountChosen
    }
    if (category == PurchaseView.Category.Groceries) {
        groceries += amountChosen
    }
    if (category == PurchaseView.Category.Luxuries) {
        luxuries += amountChosen
    }
    if (category == PurchaseView.Category.Miscellaneous) {
        miscellaneous += amountChosen
    }
    total+=amountChosen
    
}







struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
    }
}
