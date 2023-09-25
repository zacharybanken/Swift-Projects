//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue : Int = 10
    @State var widthIncrement : CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100 + widthIncrement, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Stepper("stepper 2") {
                //increment
                widthIncrement += 10
                
            } onDecrement: {
                //decrement
                incrementWidth(amount: -10)
                
            }
            .padding()

            
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
