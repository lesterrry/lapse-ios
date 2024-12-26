//
//  FeedbackView.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 20.12.2024.
//

import SwiftUI

struct FeedbackView: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Image("feedbackback")
                
                VStack {
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 184, height: 114)
                        .padding(.bottom, 38)
                    
                    Text("Обратная связь")
                        .font(Font.custom("SuisseIntl-Medium", size: 28))
                        .foregroundColor(.darkerhappiness)
                        .padding()
                    
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.darkerhappiness, lineWidth: 2)
                        .background(Color.white)
                        .frame(width: 330, height: 126)
                        .overlay  (
                            Text("Если вы обнаружили ошибки или\nтехнические неполадки — сообщите\nнам. Мы хотим расти и развиваться,\nпоэтому всегда готовы услышать\nот Вас обратную связь!")
                                .background(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.trailing, 0)
                                .frame(width: 310, height: 124)
                                .font(Font.custom("SuisseIntl-Regular", size: 16)))
                        .padding(.bottom, 24)
                    
                    
                    
                    Button(action: {
                        print("Button taped")
                    }) {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(.happiness)
                            .frame(width: 215, height: 50)
                            .overlay (
                                Text("lapse@yandex.ru")
                                    .foregroundColor(.white)
                                    .font(Font.custom("SuisseIntl-Medium", size: 16)))
                    }
                    
                   
                }
                .padding(.bottom, 280)
                .navigationBarItems(trailing: Button("Закрыть") {
                    UIApplication.shared.windows.first?.rootViewController?.dismiss(
                        animated: true,
                        completion: nil
                    )
                })
            }
            
            
            
        }
            
            
            
    }
}
