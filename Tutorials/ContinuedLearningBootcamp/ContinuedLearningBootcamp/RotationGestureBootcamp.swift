//
//  RotationGestureBootcamp.swift
//  ContinuedLearningBootcamp
//
//  Created by Zachary Banken on 6/16/22.
//

import SwiftUI

struct RotationGestureBootcamp: View {
    
    @State var angle: Angle = Angle(degrees: 0)
    @State var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding(50)
            .background(Color.blue)
            .cornerRadius(30)
//            .rotationEffect(angle)
//            .gesture(
//                RotationGesture()
//                    .onChanged {value in
//                        angle = value
//
//                    } .onEnded { value in
//                        withAnimation(.spring()) {
//                            angle = Angle(degrees: 0)
//                        }
//                    }
//            )
            .scaleEffect(1 + currentAmount)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        currentAmount = value - 1
                    } .onEnded { value in
                        withAnimation(.spring()) {
                            currentAmount = 0
                        }
                        
                    })
    }
}

struct RotationGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureBootcamp()
    }
}
