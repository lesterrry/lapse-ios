//
//  LogInView.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 20.12.2024.
//

import SwiftUI

struct LogInView: View {
    
    @State private var username: String = ""
    @State private var lastname: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var canNavigateToForum = false
    @State private var mockUsers: [(email: String, password: String)] = [
    ("Kabachok@gmail.com", "12345"),
    ("Anna@gmail.com", "000"),
    ("Lisa@gmail.com", "555")
    ]
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                    Image("loginbackground")
                    
                    VStack {
                        
                        Text("Войти в аккаунт")
                            .font(Font.custom("SuisseIntl-Medium", size: 32))
                            .padding(.bottom, 15)
                        
                        VStack {
                            
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.darkgeneral, lineWidth: 2)
                                .background(Color.white)
                                .frame(width: 330, height: 46)
                                .overlay (
                                    TextField("Email", text: $email)
                                        .multilineTextAlignment(.leading)
                                        .background(Color.white)
                                        .foregroundColor(.moreanxietygeneral)
                                        .frame(width: 295, height: 46)
                                        .font(Font.custom("SuisseIntl-Regular", size: 16)))
                                .padding(.bottom, 6)
                            
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.darkgeneral, lineWidth: 2)
                                .background(Color.white)
                                .frame(width: 330, height: 46)
                                .overlay (
                                    SecureField("Пароль", text: $password)
                                        .multilineTextAlignment(.leading)
                                        .background(Color.white)
                                        .foregroundColor(.moreanxietygeneral)
                                        .frame(width: 295, height: 46)
                                        .font(Font.custom("SuisseIntl-Regular", size: 16)))
                                .padding(.bottom, 18)
                            
                            //
                            
                            VStack {
                                
                                NavigationLink(destination: ContentView(), isActive: $canNavigateToForum) {
                                    EmptyView()
                                }
                                Button(action: {
                                    if let index = mockUsers.firstIndex(where: {
                                        $0.email == email && $0.password == password }) {
                                        canNavigateToForum = true
                                        print("Добро пожаловать!")
                                    } else {
                                        print("Неправильный логин или пароль")
                                    }
                                }) {
                                    RoundedRectangle(cornerRadius: 14)
                                        .foregroundStyle(.darkgeneral)
                                        .frame(width: 330, height: 46)
                                        .overlay(
                                            Text("Войти")
                                                .frame(width: 295, height: 46)
                                                .foregroundStyle(.white)
                                                .font(Font.custom("SuisseIntl-Regular", size: 16)))
                                }
                                
                            }
                            .padding(.bottom, 10)
                            .navigationBarTitle("")
                            .navigationBarBackButtonHidden(true)
                            
                            //
                            
                        
                            
                            HStack {
                                
                                Rectangle()
                                    .foregroundStyle(.darkgeneral)
                                    .frame(width: 134, height: 1)
                                
                                
                                Text("или")
                                    .font(Font.custom("SuisseIntl-Regular", size: 16))
                                
                                Rectangle()
                                    .foregroundStyle(.darkgeneral)
                                    .frame(width: 134, height: 1)
                            }
                            .padding(.bottom, 10)
                            
                            NavigationLink(destination: RegistrationView()) {
                                
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.darkgeneral, lineWidth: 2)
                                    .background(Color.white)
                                    .frame(width: 330, height: 46)
                                    .overlay (
                                        Text("Зарегистрироваться")
                                            .multilineTextAlignment(.leading)
                                            .background(Color.white)
                                            .foregroundStyle(.darkgeneral)
                                            .frame(width: 295, height: 46)
                                            .font(Font.custom("SuisseIntl-Regular", size: 16)))
                                    .padding(.bottom, 6)
                            }
                            .navigationBarTitle("")
                            .navigationBarBackButtonHidden(true)
                            
                        }
                        .padding(.bottom, 26)
                        
                    }
                }
            }
        
        
    }
        
}
#Preview {
    LogInView()
}
