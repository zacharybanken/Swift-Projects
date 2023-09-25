//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/14/22.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView : Bool = false
    
    var body: some View {
        ZStack {
            
            VStack {
                Button("button") {
                    showView.toggle()
                }
                Spacer()
                
                if showView {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .transition(.move(edge: .bottom))
                        .animation(.easeInOut)
                }
                
                
                
            }.edgesIgnoringSafeArea(.bottom)
            
            
        }
        
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
