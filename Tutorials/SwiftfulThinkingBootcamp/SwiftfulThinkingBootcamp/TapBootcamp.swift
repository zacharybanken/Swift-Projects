//
//  TapBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct TapBootcamp: View {
    
    @State var isSelected : Bool = false
    
    var body: some View {
        
        VStack(spacing:40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height:200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            Button(action: {
                isSelected.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
            })
            
            Text("tap gesture")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                .onTapGesture(count: 2) {
                        withAnimation(.easeInOut) {
                            isSelected.toggle()
                        }
                        
                    }
            
            
            Spacer()
        }
        .padding()
    }
}

struct TapBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapBootcamp()
    }
}
