//
//  PostView.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 26.12.2024.
//

import SwiftUI

struct PostView: View {
    
    @State var showingShareScheet = false

    
    var body: some View {
        
        NavigationStack {
            
            VStack {
            

                ZStack {
                    
                    Image("postback")
                    
                    NavigationLink (destination: ContentView()) {
                        HStack (spacing: 10) {
                            Image("logo")
                        }
                        
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
                    .padding(.bottom, 740)
                    
                    VStack (alignment: .leading) {
                        
                        HStack (alignment: .center, spacing: 14) {
                            
                            Image("profileimage")
                                .resizable()
                                .frame(width: 55, height: 55)
                            
                            VStack (alignment: .leading) {
                                Text("Даша Медведева")
                                    .foregroundColor(.black)
                                    .font(Font.custom("SuisseIntl-Medium", size: 18))
                                Text("10.03.2023 → 12.03.2023")
                                    .foregroundColor(.secondary)
                                    .font(Font.custom("SuisseIntl-Medium", size: 16))
                            }
                        }
                        .padding(.bottom, 10)
                        
                        Text("Дизайн-выходные\nв Суздале!")
                            .foregroundColor(.darkcalmness)
                            .font(Font.custom("SuisseIntl-Medium", size: 28))
                            .padding(.bottom, 6)
                        
                        Text("Съездили с Ариной и Ваней в Суздаль,\nи этобыло лучшее решение года! Заблудились\nв переулках, пока искали самую фотогеничную\nцерковь (спойлер: они там все такие).")
                            .foregroundColor(.black)
                            .font(Font.custom("SuisseIntl-Regular", size: 15))
                            .padding(.bottom, 16)
                        
                        
                        ZStack {
                            Image("postimage")
                                .resizable()
                                .frame(width: 340, height: 340)
                                .padding(.bottom, 8)
                            
                            HStack (spacing: 12) {
                                
                                Image(systemName: "heart.circle.fill")
                                    .resizable()
                                    .frame(width: 34, height: 34)
                                    .foregroundStyle(Color.darkcalmness)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                
                                Button(action: {
                                    print("tap")
                                    showingShareScheet = true
                                }) {
                                    Image(systemName: "arrowshape.turn.up.right.circle")
                                        .resizable()
                                        .frame(width: 34, height: 34)
                                        .foregroundStyle(Color.darkcalmness)
                                        .background(Color.white)
                                        .cornerRadius(20)
                                }
                                .sheet(isPresented: $showingShareScheet) {
                                    ActivityView(activityItems: [URL(string: "https://github.com/lesterrry/lifetracer")!])
                                }
                            }
                            .padding(.top, 268)
                            .padding(.trailing, 222)
                            
                        }
                            
                        ZStack {
                            
                            HStack (alignment: .bottom) {
                                
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.darkcalmness, lineWidth: 1.5)
                                    .background(Color.white)
                                    .frame(width: 166, height: 40)
                                    .overlay (
                                        Text("10.03.2023")
                                            .multilineTextAlignment(.center)
                                            .background(Color.white)
                                            .foregroundColor(.darkcalmness)
                                            .frame(width: 150, height: 30)
                                            .font(Font.custom("SuisseIntl-Medium", size: 15)))
                                
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.darkcalmness, lineWidth: 1.5)
                                    .background(Color.white)
                                    .frame(width: 166, height: 40)
                                    .overlay (
                                        Text("12.03.2024")
                                            .multilineTextAlignment(.center)
                                            .background(Color.white)
                                            .foregroundStyle(.darkcalmness)
                                            .frame(width: 150, height: 30)
                                            .font(Font.custom("SuisseIntl-Medium", size: 15)))
                            }
                            
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(Color.darkcalmness)
                                .background(Color.white)
                                .cornerRadius(20)
                        }
                    }
                }
            }
            
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    PostView()
}
