//
//  Project_26_12_prosmotrApp.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 20.12.2024.
//

import SwiftUI

@main
struct Project_26_12_prosmotrApp: App {
    
    @StateObject var themeManager = ThemeManager()
    
    var body: some Scene {
        WindowGroup {
            OnboardingModel()
                .environmentObject(themeManager)
        }
    }
}
