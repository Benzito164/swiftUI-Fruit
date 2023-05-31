//
//  FruitsApp.swift
//  Fruits
//
//  Created by Beni Ibeh on 29/05/2023.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
