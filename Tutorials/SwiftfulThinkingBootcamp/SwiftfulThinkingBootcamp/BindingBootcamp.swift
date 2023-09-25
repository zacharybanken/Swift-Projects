//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/14/22.
//

import SwiftUI

//Parent view

struct BindingBootcamp: View {
    
    @State var backgroundColor : Color = Color.green
    @State var title: String = "title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
        
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

// Child view (button)
// binding connects child variable to parent variable

struct ButtonView: View {
    
    @Binding var backgroundColor : Color
    @State var buttonColor : Color = Color.blue
    @Binding var title : String
    @State var buttonPressed : Bool = true
    
    var body: some View {
        
        Button(action: {
            
            if (buttonPressed == true) {
                backgroundColor = Color.orange
                buttonColor = Color.pink
                title = "New title"
            }  else {
                backgroundColor = Color.purple
                buttonColor = Color.gray
                title = "Old title"
            }
            buttonPressed.toggle()
            
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}
