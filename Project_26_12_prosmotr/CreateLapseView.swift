//
//  CreateLapseView.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 22.12.2024.
//

import SwiftUI

struct CreateLapseView: View {
    
    @State private var start: String = ""
    @State private var end: String = ""
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                VStack {
                    
                    ZStack {
                        
                        Text("Создать Lapse")
                            .foregroundStyle(.darkerhappiness)
                            .padding(.bottom, 10)
                            .font(Font.custom("SuisseIntl-Medium", size: 28))
                        
                        NavigationLink(destination: ContentView()) {
                            
                            Image("exiticone")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding(.bottom, 6)
                                .padding(.leading, 280)
                        }
                    }
                    .padding(.bottom, 15)
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 32)
                            .foregroundStyle(.secondgray)
                            .frame(width: 222, height: 44)
                        
                        HStack (spacing: 0) {
                            
                            RoundedRectangle(cornerRadius: 32)
                                .foregroundStyle(.white)
                                .frame(width: 106, height: 34)
                                .overlay(
                                    Text("Общий")
                                        .frame(width: 106, height: 34)
                                        .foregroundStyle(.darkerhappiness)
                                        .font(Font.custom("SuisseIntl-Regular", size: 14)))
                            
                            RoundedRectangle(cornerRadius: 32)
                                .foregroundStyle(.secondgray)
                                .frame(width: 106, height: 34)
                                .overlay(
                                    Text("Личный")
                                        .frame(width: 106, height: 34)
                                        .foregroundStyle(.secondary)
                                        .font(Font.custom("SuisseIntl-Regular", size: 14)))
                        }
                    }
                    .padding(.bottom, 15)
                    
                    
                    ZStack {
                        
                        VStack {
                            
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.darkerhappiness, lineWidth: 2)
                                .background(Color.white)
                                .frame(width: 330, height: 70)
                                .overlay (
                                    TextField("10.03.2023", text: $start)
                                        .multilineTextAlignment(.center)
                                        .background(Color.white)
                                        .foregroundColor(.moreanxietygeneral)
                                        .frame(width: 295, height: 76)
                                        .font(Font.custom("SuisseIntl-Medium", size: 22)))
                                .padding(.bottom, 6)
                            
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.darkerhappiness, lineWidth: 2)
                                .background(Color.white)
                                .frame(width: 330, height: 70)
                                .overlay (
                                    TextField("12.03.2024", text: $end)
                                        .multilineTextAlignment(.center)
                                        .background(Color.white)
                                        .foregroundColor(.moreanxietygeneral)
                                        .frame(width: 295, height: 70)
                                        .font(Font.custom("SuisseIntl-Medium", size: 22)))
                                .padding(.bottom, 24)
                        }
                        
                        Image(systemName: "arrow.down.circle.fill")
                            .resizable()
                            .frame(width: 38, height: 38)
                            .foregroundStyle(Color.darkerhappiness)
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding(.bottom, 20)
                    }
                    
                    Text("Название")
                        .foregroundStyle(.darkerhappiness)
                        .font(Font.custom("SuisseIntl-Medium", size: 18))
                        .padding(.bottom, 8)
                    
                    
                    
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.darkerhappiness, lineWidth: 2)
                        .background(Color.white)
                        .frame(width: 330, height: 52)
                        .overlay  (
                            Text("Дизайн-выходные в Суздале!")
                                .background(Color.white)
                                .padding(.trailing, 66)
                                .frame(width: 310, height: 46)
                                .font(Font.custom("SuisseIntl-Regular", size: 16)))
                        .padding(.bottom, 24)
                    
                    Text("Описание")
                        .foregroundStyle(.darkerhappiness)
                        .font(Font.custom("SuisseIntl-Medium", size: 18))
                        .padding(.bottom, 8)
                    
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.darkerhappiness, lineWidth: 2)
                        .background(Color.white)
                        .frame(width: 330, height: 126)
                        .overlay  (
                            Text("Съездили с Ариной и Ваней в\nСуздаль, и это было лучшее решение года! Заблудились в переулках, пока искали самую фотогеничную церковь (спойлер: они там все такие).")
                                .background(Color.white)
                                .padding(.trailing, 0)
                                .frame(width: 310, height: 124)
                                .font(Font.custom("SuisseIntl-Regular", size: 16)))
                        .padding(.bottom, 24)
                    
                    Text("Цвет")
                        .foregroundStyle(.darkerhappiness)
                        .font(Font.custom("SuisseIntl-Medium", size: 18))
                        .padding(.bottom, 8)
                    
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.darkerhappiness, lineWidth: 2)
                        .background(Color.white)
                        .frame(width: 330, height: 90)
                        .overlay  (
                            Image("allcolors")
                                .resizable()
                                .frame(width: 302, height: 54))
                        .padding(.bottom, 24)
                    
                    
                    Text("Фото")
                        .foregroundStyle(.darkerhappiness)
                        .font(Font.custom("SuisseIntl-Medium", size: 18))
                        .padding(.bottom, 8)
                    
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.darkerhappiness, lineWidth: 2)
                        .background(Color.white)
                        .frame(width: 330, height: 330)
                        .overlay  (
                            Image("createfoto")
                                .resizable()
                                .frame(width: 330, height: 330))
                        .padding(.bottom, 6)
                    
                    NavigationLink(destination: PostView()) {
    
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundStyle(.darkerhappiness)
                            .frame(width: 346, height: 46)
                            .overlay(
                                Text("Добавить период")
                                    .foregroundStyle(.white)
                                    .font(Font.custom("SuisseIntl-Medium", size: 16)))
                    }
                    .padding(.top, 10)
                    
                    
                    
                    
                    
                    
                }
                .padding(.horizontal, 1)
                .padding(.bottom, 24)
                
            }

            .scrollIndicators(.hidden)
            
            
        }
        .navigationBarBackButtonHidden(true)
        
        
        
        
    }
    
}

#Preview {
    CreateLapseView()
}
