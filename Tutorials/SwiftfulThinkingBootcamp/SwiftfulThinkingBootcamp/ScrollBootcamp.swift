//
//  ScrollBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/12/22.
//

import SwiftUI

struct ScrollBootcamp: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack{
                
                
                ForEach(0..<50) { index in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(width: 200,height: 150)
                        .padding()
                        .shadow(radius: 10)
                        
                        
                    
                    
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack{
                        ForEach(0..<50) { index in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .frame(width: 50,height: 30)
                                .padding()
                                .shadow(radius: 10)
                            
                            }
                        }
                    
                    }
                }
            }
        }
    }
}

struct ScrollBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollBootcamp()
    }
}
