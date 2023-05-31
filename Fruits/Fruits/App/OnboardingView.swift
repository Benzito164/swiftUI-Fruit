//
//  OnboardingView.swift
//  Fruits
//
//  Created by Beni Ibeh on 30/05/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: PROPERTIES
    var fruits:[Fruit] = fruitsData
    
    //MARK: BODY
    
    //MARK: PREVIEW
    var body: some View {
        TabView{
            ForEach(fruits[0...5] ) {
                item in
                FruitCardView(fruit: item)
            }//:LOOP
            
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
