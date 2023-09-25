//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/12/22.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10, content: {
        
            Text("Title")
                .font(.largeTitle)
                .fontWeight(.semibold)
                
            Text("asdjfahslkdfjhasldkfjhasdklfjhaskdljfhaskdfjhaklsdjhfjkadsfkasjdfaskljdfhaskdjf")
        
            })
            .padding()
            .padding(.vertical,20)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,x:0,y:10)
            
            )
            .padding()
            HStack {
                VStack(alignment: .leading, spacing: 10, content: {
            
                Text("Title")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                Text("asdjfahslkdfjhasldkfjhasdklfjhaskdljfhaskdfjhaklsdjhfjkadsfkasjdfaskljdfhaskdjf")
            
                })
                .padding()
                .padding(.vertical,20)
                .background(
                    Color.white
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,x:0,y:10)
                
                )
                .padding()
                
                VStack(alignment: .leading, spacing: 10, content: {
            
                Text("Title")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                Text("asdjfahslkdfjhasldkfjhasdklfjhaskdljfhaskdfjhaklsdjhfjkadsfkasjdfaskljdfhaskdjf")
            
                })
                .padding()
                .padding(.vertical,20)
                .background(
                    Color.white
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,x:0,y:10)
                
                )
                .padding()
            }
        }
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
