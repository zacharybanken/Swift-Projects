//
//  AppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct AppearBootcamp: View {
    
    @State var myText: String = "start"
    @State  var count : Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()
                            .overlay(Image(systemName: "person.fill").foregroundColor(.white))
                            .onAppear(perform: {
                                count += 1
                                    
                            })
                            
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                myText = "new text"
                }
            })
            .onDisappear(perform: {
                myText = "ending text"
            })
            .navigationTitle("\(count)")
        }
    }
}

struct AppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppearBootcamp()
    }
}
