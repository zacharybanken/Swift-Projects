//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/17/22.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @State var name: String = ""
    @FocusState private var nameInFocus: Bool
    
    var body: some View {
        
        VStack {
        
            TextField("Add name", text: $name)
                .focused($nameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .background(Color.gray)
                .cornerRadius(10)
                .padding()
            
            Button("toggle focus") {
                nameInFocus.toggle()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.nameInFocus = true
                }
            }
        }
         
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
