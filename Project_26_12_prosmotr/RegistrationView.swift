//
//  RegistrationView.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 20.12.2024.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var username: String = ""
    @State private var lastname: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        NavigationStack {
        
        ZStack {
                Image("registrationbackground")
                
                VStack {
                    
                    Text("Создать аккаунт")
                        .font(Font.custom("SuisseIntl-Medium", size: 32))
                        .padding(.bottom, 15)
                    
                    VStack {
                        
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(Color.darkgeneral, lineWidth: 2)
                            .background(Color.white)
                            .frame(width: 330, height: 46)
                            .overlay (
                                TextField("Имя", text: $username)
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
                                TextField("Фамилия", text: $lastname)
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
                            .padding(.bottom, 12)
                        
                        NavigationLink(destination: ContentView()) {
                            
                            RoundedRectangle(cornerRadius: 14)
                                .foregroundStyle(.darkgeneral)
                                .frame(width: 330, height: 46)
                                .overlay(
                                    Text("Зарегистрироваться")
                                        .frame(width: 295, height: 46)
                                        .foregroundStyle(.white)
                                        .font(Font.custom("SuisseIntl-Regular", size: 16)))
                        }
                        .padding(.bottom, 10)
                        .navigationBarTitle("")
                        .navigationBarBackButtonHidden(true)
                        
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
                        
                        NavigationLink(destination: LogInView()) {
                            
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.darkgeneral, lineWidth: 2)
                                .background(Color.white)
                                .frame(width: 330, height: 46)
                                .overlay (
                                    Text("Войти")
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
    RegistrationView()
}
