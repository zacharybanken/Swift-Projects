//
//  OptionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct OptionalBootcamp: View {
    
    @State var currentUserID : String? = nil
    @State var displayText : String? = nil
    @State var isLoading : Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("practice safe coding")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                
                Spacer()
            }
            .navigationTitle("safe code")
            .onAppear(perform: {
                loadData2()
            })
        }
        
        
        }
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                displayText = "user: \(userID)"
                isLoading = false
            })
        } else {
            displayText = "error"
        }
        
        
    }
    
    func loadData2() {
        
        guard let userID = currentUserID else {
            displayText = "error"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            displayText = "user: \(userID)"
            isLoading = false
        })
    }
}



struct OptionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OptionalBootcamp()
    }
}
