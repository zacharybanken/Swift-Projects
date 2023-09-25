//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/13/22.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor : Color = Color.green
    @State var myTitle : String = "my title"
    @State var count : Int = 0
    @State var textColor : Color = .white
    
    func button2() {
        backgroundColor = .purple
        textColor = .black
        myTitle = "2 pressed"
        count -= 1
    }
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20){
                Text(myTitle)
                    .font(.title)
                    
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        textColor = .blue
                        myTitle = "1 pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        button2()
                    }
                }
            }
            .foregroundColor(textColor)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
