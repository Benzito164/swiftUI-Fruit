//
//  FruitNutrientView.swift
//  Fruits
//
//  Created by Beni Ibeh on 31/05/2023.
//

import SwiftUI

struct FruitNutrientView: View {
    //MARK: PROPERTIES
    var fruit:Fruit
    let nutrients:[String] = ["Energy","Sugar","Fat","Protien","Vitamins"]
    //MARK: BODY
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional Value per 100g"){
                ForEach(0..<nutrients.count,id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//:BOX
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
    }
}
