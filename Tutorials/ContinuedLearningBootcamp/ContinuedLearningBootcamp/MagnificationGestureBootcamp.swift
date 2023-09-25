//
//  MagnificationGestureBootcamp.swift
//  ContinuedLearningBootcamp
//
//  Created by Zachary Banken on 6/16/22.
//

import SwiftUI

struct MagnificationGestureBootcamp: View {
    
    @State var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0
    
    var body: some View {
        
        
        NavigationView {
            ScrollView {
                
                
                LazyVStack(spacing: 10) {
                    
                    ForEach(0..<50) { (_) in
                        HStack {
                            Circle().frame(width: 35, height: 35)
                            Text("Thinking")
                            Spacer()
                            Image(systemName: "ellipsis")
                        }
                        .padding(.horizontal)
                        Rectangle()
                            .frame(height: 400)
                            .scaleEffect(1 + currentAmount)
                            .gesture(
                                MagnificationGesture()
                                    .onChanged { value in
                                        currentAmount = value - 1
                                    } .onEnded { value in
                                        withAnimation(.spring()) {
                                            currentAmount = 0
                                        }
                                        
                                    })
                            
                        HStack {
                            Image(systemName: "heart.fill")
                            Image(systemName: "text.bubble.fill")
                            Spacer()
                        }
                        .padding(.horizontal)
                        .font(.headline)
                        Text("photo caption")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                    }
                    
                }
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationTitle("Home")
            .navigationBarItems(leading: Image(systemName: "magnifyingglass"), trailing: Image(systemName: "person.fill"))
        }
        
        
        
        
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.title)
//            .padding(40)
//            .background(Color.red)
//            .cornerRadius(15)
//            .scaleEffect(1 + currentAmount + lastAmount)
//            .gesture(
//                MagnificationGesture()
//                    .onChanged { value in
//                        currentAmount = value - 1
//                    } .onEnded { value in
//                        lastAmount += currentAmount
//                    }
//
//            )
    }
}

struct MagnificationGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureBootcamp()
    }
}
