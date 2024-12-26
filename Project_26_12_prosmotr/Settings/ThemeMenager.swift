//
//  ThemeMenager.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 20.12.2024.
//

import SwiftUI

class ThemeManager: ObservableObject {
    @AppStorage("selectedTheme") var selectedTheme: String = "light" {
        didSet {
            switch selectedTheme {
            case "light":
                currentTheme = Themes.light
            case "dark":
                currentTheme = Themes.dark
            default:
                currentTheme = Themes.light
            }
        }
    }
    
    @Published var currentTheme: Theme = Themes.light
    
    init() {
        switch selectedTheme {
        case "light":
            currentTheme = Themes.light
        case "dark":
            currentTheme = Themes.dark
        default:
            currentTheme = Themes.light
        }
    }
}
