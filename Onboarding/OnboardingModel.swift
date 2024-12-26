//
//  OnboardingModel.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 20.12.2024.
//

import SwiftUI

struct OnboardingModel: View {
    
    @State var isCompleted = false
    
    var body: some View {
       
        if (isCompleted) {
            LogInView()
        } else {
            
            TabView {
                OnboardingView(isCompleted: $isCompleted, title: "Все твои воспоминания\nна одном таймлайне", description: "Больше не нужно стараться удержать\nв голове все важные события, теперь\nони все хранятся в одном месте\nи собираются в таймлайны.", backgroundImage: "backgroundimage", onboardingImage: "onboardingimage1");
                OnboardingView(isCompleted: $isCompleted, title: "Следи за своим моральным состоянием", description: "Добавь своим воспоминаниям цвет,\nкоторый ассоциируется с определён-\nной эмоцией. Красный – злость,\nрозовый – спокойствие, синий –\nгрусть, фиолетовый – тревога,\nзелёный – счастье.", backgroundImage: "backgroundimage", onboardingImage: "onboardingimage2");
                OnboardingView(isCompleted: $isCompleted, title: "Делись своей жизнью", description: "В нашем приложении ты можешь сам выбрать, какой частью своей жизни\nты хотел бы поделиться, а какую\nпредпочел бы скрыть ото всех.", backgroundImage: "backgroundimage", onboardingImage: "onboardingimage3");
                OnboardingView(isCompleted: $isCompleted, title: "Пересматривай то,\nкак было раньше", description: "Ты можешь создать неограниченное количество периодов и возвращаться\nк их редактированию и просмотру\nв любое время.", backgroundImage: "backgroundimage", onboardingImage: "onboardingimage4")
            }
            .padding(.bottom, 10)
            .ignoresSafeArea()
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
    
    
struct OnboardingView: View {
        @Binding var isCompleted: Bool
        
    let title: String
    let description: String
    let backgroundImage: String
    let onboardingImage: String
        
    var body: some View {
        
        ZStack {
            
            Image(backgroundImage)
            
            VStack {
                VStack (alignment: .center) {
                    
                    Image(onboardingImage)
                        .resizable()
                        .frame(width: 322, height: 506)
                        .padding(.bottom, 8)
                }
                
                VStack (alignment: .leading) {
                    
                    Text(title)
                        .font(Font.custom("SuisseIntl-Medium", size: 30))
                        .padding(.bottom, 8)
                    
                    Text(description)
                        .font(Font.custom("SuisseIntl-Regular", size: 18))
                    
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 18)
            }
            
            Button(action: {
                isCompleted = true
            }) {
                Image("exiticone")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.bottom, 775)
                    .padding(.leading, 295)
            }
            
        }
        
        }
        
    }
    
}


#Preview {
    OnboardingModel()
}
