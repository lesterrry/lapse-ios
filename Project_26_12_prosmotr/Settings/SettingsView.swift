//
//  Settings.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 20.12.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var themeManager: ThemeManager
    @State private var showFeedback = false
    @State private var showLogoutAlert = false
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Выберите тему")) {
                    HStack {
                        Text("Светлая")
                        Spacer()
                        if themeManager.selectedTheme == "light" {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        themeManager.selectedTheme = "light"
                    }
                    HStack {
                        Text("Темная")
                        Spacer()
                        if themeManager.selectedTheme == "dark" {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        themeManager.selectedTheme = "dark"
                    }
                }
                
                Section(header: Text("Информация")) {
                    Button(action: {
                        showFeedback.toggle()
                    }) {
                        Text("Обратная связь")
                    }
                    .sheet(isPresented: $showFeedback) {
                        FeedbackView()
                    }
                    
                    
                    Section {
                        Button(action: {
                            showLogoutAlert.toggle()
                        }) {
                            Text("Выйти из аккаунта")
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $showLogoutAlert) {
                            Alert(
                                title: Text("Выход из аккаунта"),
                                message: Text("Вы уверены, что хотите выйти из своего аккаунта?"),
                                primaryButton: .destructive(Text("Выйти")) {
                                    print("User logged out")
                                },
                                secondaryButton: .cancel(Text("Отмена"))
                            )
                        }
                    }
                }
                .navigationBarTitle("Настройки")
            }
        }
    }
}
