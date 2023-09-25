//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/13/22.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var bgColor : Color = Color.pink
    
    func buttonPressed() {
        bgColor = .yellow
    }
    
    var contentLayer : some View {
        VStack {
            Text("title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                    Text("Press me")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
            })
        }
    }
    
    var body: some View {
        ZStack {
            
            //background
            
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            
            contentLayer
            
        }
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
