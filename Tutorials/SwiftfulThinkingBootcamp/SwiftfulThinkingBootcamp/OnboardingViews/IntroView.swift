//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            
            //bg
            RadialGradient(gradient: Gradient(
                           colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color.blue]),
                           center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                           startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/,
                           endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
            
            
            
            
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
