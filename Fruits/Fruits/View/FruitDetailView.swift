//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Beni Ibeh on 30/05/2023.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: PROPERTIES
    var fruit:Fruit
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center,spacing: 20 ) {
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack (alignment: .leading,spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //NUTRIENTS
                        FruitNutrientView(fruit: fruit)
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }.padding(.horizontal,20)
                        .frame(maxWidth:640,alignment: .center)
                }//:VSTACK
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }//:Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
