//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/14/22.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle : Bool = false
    @State var showRectangle : Bool = false
    @State var isLoading : Bool = false
    
    var body: some View {
        
        VStack(spacing:20) {
            
            Spacer()
            
            Button("is loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            
//            Button("circle button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//
//            Button("rectangle button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            }
//
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            } else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            }
//
            
            
           Spacer()
            
        
        }
        
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
