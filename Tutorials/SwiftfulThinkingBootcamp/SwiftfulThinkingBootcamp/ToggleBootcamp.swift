//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleOn : Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("status:")
                Text(toggleOn ? "on" : "off")
            }
            
            
            Toggle(
                isOn: $toggleOn,
                label: {
                Text("Label")
            })
                .padding()
            
            Spacer()
        }
        .padding()
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
