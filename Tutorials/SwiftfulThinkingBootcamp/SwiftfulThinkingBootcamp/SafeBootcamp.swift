//
//  SafeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/13/22.
//

import SwiftUI

struct SafeBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack{
                Text("Title")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0..<10) {index in
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height:150)
                        .shadow(radius: 10)
                        .padding()
                }
            }
            
        }
        .background(Color.red
                        .ignoresSafeArea()
        )
    }
}
        
        
        
//        ZStack {
//
//            //back
//
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            //fore
//
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//
//            }
//            .frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(Color.red)
//        }
//    }


struct SafeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeBootcamp()
    }
}
