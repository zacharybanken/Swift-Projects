//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/12/22.
//

import SwiftUI

struct StacksBootcamp: View
{
    var body: some View
    {
        VStack(content: {
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        
        HStack(alignment: .bottom, spacing: 50, content:
                {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    RoundedRectangle(cornerRadius: 5.0)
                        .fill(Color.blue)
                        .frame(width: 50, height: 50, alignment: .leading)
                        .overlay(
                            Text("Hi")
                                .foregroundColor(.white)
                        )
                }
        )
        .background(Color.black)
        })
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
