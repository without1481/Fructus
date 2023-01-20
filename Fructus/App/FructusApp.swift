//
//  FructusApp.swift
//  Fructus
//
//  Created by Алина on 03.01.2023.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            }
            else {
                ContentView()
            }
        }
    }
}
