//
//  GeometryReaderBootcamp.swift
//  ContinuedLearningBootcamp
//
//  Created by Zachary Banken on 6/19/22.
//

import SwiftUI

struct GeometryReaderBootcamp: View {
    
    func getPercentage(geo: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        return Double(1 - (currentX / maxDistance))
    }
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            
            VStack {
                
                HStack {
                    
                    
                    ForEach(0..<20) { index in
                        
                        GeometryReader { geometry in
                            
                            Rectangle()
                                .foregroundColor(.blue)
                                .overlay(Text("\(geometry.frame(in: .global).midX)"))
                                .rotation3DEffect(
                                    Angle(degrees: getPercentage(geo: geometry) * 50),
                                    axis: (x: 0, y: 1, z: 0))
                                
     
                        }
                        .frame(width:300, height: 250)
                        .padding()
                        
                        
                    }
                }
            }
        }
        
//        GeometryReader { geometry in
//            HStack(spacing: 0) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: geometry.size.width * 0.2)
//                Rectangle()
//                    .fill(Color.blue)
//            }
//            .ignoresSafeArea()
//
//        }
        
        
    }
}

struct GeometryReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderBootcamp()
            .previewInterfaceOrientation(.portrait)
    }
}
