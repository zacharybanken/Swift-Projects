//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderVal : Double = 10
    @State var color : Color = .red
    
    var body: some View {
        VStack {
            Text("rating")
            Text(String(format: "%.0f", sliderVal))
                .foregroundColor(color)
            
            Slider(value: $sliderVal, in: 0...10, step: 1.0,
                   onEditingChanged: { (_) in
                    color = .green
                   }
            )
                .padding()
        }
    }
    
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
