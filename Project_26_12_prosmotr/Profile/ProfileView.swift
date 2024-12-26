//
//  ProfileView.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 20.12.2024.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var user: UserProfile = UserProfile(
        firstName: "Даша",
        lastName: "Медведева",
        description: "Я люблю собирать впечатления —\nмаленькие и большие, яркие и едва\nзаметные. Радуюсь простым вещам,\nнахожу уют в тихих моментах и ценю\nкрасоту вокруг.",
        avatar: UIImage(named: "avatar_placeholder")
    )
    
    @State private var isEditing: Bool = false
    @State private var showSettings: Bool = false
    @State private var selectedImage: UIImage?
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                VStack (alignment: .center) {
                    
                    HStack (spacing: 10) {
                        
                        NavigationLink (destination: ContentView()) {
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
                        
                        Button(action: {
                            showSettings.toggle()
                        }) {
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.happiness)
                        }
                        .sheet(isPresented: $showSettings) {
                            SettingsView()
                        }
                        
                    }
                    
                }
                .padding(.bottom, 40)
                
                
                ZStack (alignment: .bottom) {
                    
                    if let avatar = user.avatar {
                        Image(uiImage: avatar)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                        
                    } else {
                        Image("profileimage")
                            .resizable()
                            .frame(width: 150, height: 150)
                    }
                    
                    Button(action: {
                        isEditing.toggle()
                    }) {
                        Image(systemName: "pencil.circle")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .foregroundStyle(Color.darkerhappiness)
                            .background(Color.white)
                            .cornerRadius(20)
                    }
                    .sheet(isPresented: $isEditing) {
                        EditProfileView(user: $user, selectedImage: $selectedImage)
                    }
                    .padding(.leading, 100)
                }
                .padding(.bottom, 14)
                
                Text("\(user.firstName) \(user.lastName)")
                    .foregroundStyle(.darkerhappiness)
                    .padding(.bottom, 10)
                    .font(Font.custom("SuisseIntl-Medium", size: 28))
                
                Text(user.description)
                    .font(Font.custom("SuisseIntl-Regular", size: 17))
                    .foregroundStyle(.darkerhappiness)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 25)
                
                
                
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
                                .foregroundStyle(.darkgeneral)
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
                .padding(.bottom, 30)
                   
                
                VStack (alignment: .leading) {
                    
                    HStack (alignment: .bottom) {
                        Text("01.10.2024 — 31.10.2024")
                            .foregroundColor(.darkerhappiness)
                            .font(Font.custom("SuisseIntl-Medium", size: 20))
                        Text("ОКТЯБРЬ")
                            .foregroundColor(.happiness)
                            .font(Font.custom("SuisseIntl-Medium", size: 13))
                    }
                    
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
                    
                    NavigationLink(destination: CreateLapseView()) {
    
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundStyle(.secondgray)
                            .frame(width: 346, height: 46)
                            .overlay(
                                Text("+ Lapse")
                                    .padding(.trailing, 2)
                                    .foregroundStyle(.darkerhappiness)
                                    .font(Font.custom("SuisseIntl-Regular", size: 14)))
                    }
                    .padding(.top, 10)
                    .navigationBarTitle("")
                    .navigationBarBackButtonHidden(true)
                        
                        HStack (alignment: .bottom) {
                            Text("01.09.2023 — 29.06.2024")
                                .foregroundColor(.moreanxietygeneral)
                                .font(Font.custom("SuisseIntl-Medium", size: 20))
                            Text("ТРИП")
                                .foregroundColor(.angergeneral)
                                .font(Font.custom("SuisseIntl-Medium", size: 13))
                        }
                        .padding(.top, 36)
                    
                    Image("profileimage1")
                        .resizable()
                        .frame(width: 354, height: 718)
                    
                    NavigationLink(destination: CreateLapseView()) {
    
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundStyle(.secondgray)
                            .frame(width: 346, height: 46)
                            .overlay(
                                Text("+ Lapse")
                                    .padding(.trailing, 2)
                                    .foregroundStyle(.darkerhappiness)
                                    .font(Font.custom("SuisseIntl-Regular", size: 14)))
                    }
                    .padding(.top, 10)
                    .navigationBarTitle("")
                    .navigationBarBackButtonHidden(true)
                    
                    
                    
                    
                    
                }
                .padding(.bottom, 60)
                
                
                
                
                
                
                
                
                
                
                
            }
            .padding(.top, 64)
            .ignoresSafeArea()
            .scrollIndicators(.hidden)
            
            
            }
            .navigationBarBackButtonHidden(true)
            
    
        
        
        
    }
    
            
}

#Preview {
    ProfileView()
}

//  не прописывала для View ThemeMenager – поэтому XCode может ругаться, но в симуляторе все отлично работает!
