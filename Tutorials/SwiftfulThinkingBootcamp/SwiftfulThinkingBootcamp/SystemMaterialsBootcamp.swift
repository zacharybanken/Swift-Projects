//
//  SystemMaterialsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/17/22.
//

import SwiftUI

struct SystemMaterialsBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400/800")
    
    var body: some View {
        VStack {
            Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 30, height: 4)
                    .padding()
                Spacer()
                
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(10)
        }
        .ignoresSafeArea()
        .background(AsyncImage(url: url))
    }
}

struct SystemMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemMaterialsBootcamp()
    }
}
