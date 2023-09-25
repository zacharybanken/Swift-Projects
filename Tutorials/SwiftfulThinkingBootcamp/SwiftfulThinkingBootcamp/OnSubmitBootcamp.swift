//
//  OnSubmitBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/17/22.
//

import SwiftUI

struct OnSubmitBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/, text: $text) {
            
        }
        .submitLabel(.send)
        .onSubmit {
            print("something")
        }
    }
}

struct OnSubmitBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmitBootcamp()
    }
}
