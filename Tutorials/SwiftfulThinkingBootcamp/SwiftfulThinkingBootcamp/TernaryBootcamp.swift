//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/14/22.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState : Bool = false
    
    var body: some View {
        VStack {
            Button("button \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: 200, height: 200)
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
