//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/14/22.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated : Bool = false
    
    var body: some View {
        VStack {
            Button("button") {
                
                withAnimation(Animation
                                .default
                                .repeatCount(5,autoreverses: true)
                                
                ){
                    isAnimated.toggle()
                }
                
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.green : Color.red)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ : 300,
                       alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
