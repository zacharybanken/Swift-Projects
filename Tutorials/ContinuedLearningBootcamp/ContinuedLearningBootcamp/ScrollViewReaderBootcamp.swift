//
//  ScrollViewReaderBootcamp.swift
//  ContinuedLearningBootcamp
//
//  Created by Zachary Banken on 6/17/22.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var scrollToIndex: Int = 0
    
    var body: some View {
        VStack {
            
            TextField("enter", text: $textFieldText)
                .padding()
                .keyboardType(.numberPad)
            
            Button("Scroll!") {
                withAnimation(.spring()) {
                    let index = Int(textFieldText) ?? 0
                    scrollToIndex = index
                }
                
            }
            
            ScrollViewReader { proxy in
                ScrollView {
                    
                    
                    
                    ForEach(0..<50) { index in
                        Text("Item \(index)")
                            .font(.headline)
                            .frame(height:200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(19)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    .onChange(of: scrollToIndex) { newValue in
                        proxy.scrollTo(newValue, anchor: .top)
                    }
                }
            }
        }
    }
}

struct ScrollViewReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderBootcamp()
    }
}
