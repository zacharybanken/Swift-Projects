//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/11/22.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 100)
//            .fill(Color.gray)
//            .strokeBorder(Color.orange, style: .init(lineWidth: 30, lineCap: .butt, dash: [10]) )
            .trim(from: 0.2, to: 1)
//            .stroke(Color.purple)
            .fill(
                Color("Color")
                    )
            .frame(width: 300, height: 100, alignment: .top)
            
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
            
    }
}
