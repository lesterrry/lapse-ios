//
//  ContentView.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 20.12.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
             
            ScrollView {
                 
                VStack {
                    
                    ZStack {
                        
                        Image("mainback")
                        
                        VStack (alignment: .center) {
                            
                            HStack (spacing: 10) {
                                Image("logo")
                                
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.darkerhappiness, lineWidth: 2)
                                    .background(Color.white)
                                    .frame(width: 136, height: 40)
                                    .overlay (
                                        Image(systemName: "magnifyingglass")
                                            .background(Color.white)
                                            .padding(.trailing, 90)
                                            .foregroundStyle(.graygeneral))
                                
                                NavigationLink(destination: CreateLapseView()) {
                
                                    RoundedRectangle(cornerRadius: 12)
                                        .foregroundColor(.darkerhappiness)
                                        .frame(width: 86, height: 40)
                                        .overlay (
                                            Text("+ Lapse")
                                                .padding(.trailing, 2)
                                                .foregroundStyle(.white)
                                                .font(Font.custom("SuisseIntl-Regular", size: 14)))
                                }
                                
                                NavigationLink(destination: ProfileView()) {
                                    
                                    Image("profileimage")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                }
                
                            }
                        }
                        .padding(.bottom, 262)
                    }
                    
                    HStack (spacing: 12) {
                        
                        Text("Сентябрь")
                            .foregroundColor(.graygeneral)
                            .font(Font.custom("SuisseIntl-Semibold", size: 20))
                        Text("Октябрь")
                            .foregroundColor(.darkerhappiness)
                            .font(Font.custom("SuisseIntl-Semibold", size: 20))
                        Text("Ноябрь")
                            .foregroundColor(.graygeneral)
                            .font(Font.custom("SuisseIntl-Semibold", size: 20))
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                    
                    Image("mainimages1")
                        .resizable()
                        .frame(width: 354, height: 716)
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 14)
                            .foregroundColor(.white)
                            .frame(width: 350, height: 154)
                            .shadow(color: .graygeneral, radius: 2)
                            .padding(.leading, -4)
                        
                        Text("С друзьями решили спонтанно поехать в другой\nрайон города, просто чтобы попробовать новую\nкофейню. Взяли каршеринг, долго смеялись над\nтем, как кто-то из нас пытался разобраться с\nприложением, а потом всей компанией искали\nпарковку. В итоге кофе оказался так себе, но\nэтот вечер был просто классным из-за всей\nэтой суеты и шуток.")
                            .font(Font.custom("SuisseIntl-Medium", size: 14))
                    }
                    .padding(.top, 14)
                    .padding(.bottom, 14)
                    
                    
                    HStack (spacing: 7) {
                        
                        Image("mainimages2")
                            .resizable()
                            .frame(width: 172, height: 172)
                        Image("mainimages3")
                            .resizable()
                            .frame(width: 172, height: 172)
                    }
                    
                    
                    VStack (alignment: .leading) {
                        
                        HStack (alignment: .bottom) {
                            Text("ПУБЛИЧНЫЕ")
                                .foregroundColor(.darkerhappiness)
                                .font(Font.custom("SuisseIntl-Medium", size: 20))
                            Text("ТАЙМЛАЙНЫ")
                                .foregroundColor(.darkerhappiness)
                                .font(Font.custom("SuisseIntl-Medium", size: 13))
                        }
                        .padding(.top, 32)
                        .padding(.leading, 4)
                        .padding(.bottom, 6)
                        
                        
                        HStack (spacing: -2) {
                            
                            Image("mainimages4")
                                .resizable()
                                .frame(width: 182, height: 216)
                            Image("mainimages5")
                                .resizable()
                                .frame(width: 182, height: 216)
                        }
                }
                    
                    Image("rollerimage")
                        .resizable()
                        .frame(width: 350, height: 32)
                    
                    VStack (alignment: .leading) {
                        
                        HStack (alignment: .bottom) {
                            Text("ПОПУЛЯРНЫЕ")
                                .foregroundColor(.darkerhappiness)
                                .font(Font.custom("SuisseIntl-Medium", size: 20))
                            Text("АВТОРЫ")
                                .foregroundColor(.darkerhappiness)
                                .font(Font.custom("SuisseIntl-Medium", size: 13))
                        }
                        .padding(.top, 32)
                        .padding(.leading, 12)
                        .padding(.bottom, 2)
                        
                        Image("mainimages6")
                            .resizable()
                            .frame(width: 372, height: 372)
                    }
                    
                    NavigationLink(destination: CreateLapseView()) {
    
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundStyle(.darkerhappiness)
                            .frame(width: 346, height: 46)
                            .overlay(
                                Text("Добавить период")
                                    .foregroundStyle(.happiness)
                                    .font(Font.custom("SuisseIntl-Medium", size: 16)))
                    }
                    .padding(.top, 4)
                    .navigationBarTitle("")
                    .navigationBarBackButtonHidden(true)
                    
                    
                    
                }
                .padding(.bottom, 20)
                
            }
            .scrollIndicators(.hidden)
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    ContentView()
}
