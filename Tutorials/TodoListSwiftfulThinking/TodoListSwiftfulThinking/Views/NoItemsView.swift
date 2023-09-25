//
//  NoItemsView.swift
//  TodoListSwiftfulThinking
//
//  Created by Zachary Banken on 6/16/22.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        ScrollView {
            VStack(spacing:20) {
                Text("No Items")
                    .font(.title)
                    //.foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                Text("Please add an item:")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 20)
                NavigationLink(
                    destination: AddView(),
                    label: {Text("Add something")
                        
                    })
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(animate ? secondaryAccentColor : Color("AccentColor"))
                    .cornerRadius(10)
                    .padding(.horizontal, animate ? 30 : 35)
                    .shadow(color: animate ? secondaryAccentColor.opacity(0.7) : Color.accentColor.opacity(0.7),
                            radius: animate ? 30 : 10,
                            x: 0,
                            y: animate ? 50 : 30)
                    //.scaleEffect(animate ? 1.0 : 1.0)
                    .offset(y: animate ? -7 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: {
                addAnimation()
            })
            
            
        }
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2)
                    .repeatForever()
            
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
                NoItemsView()
                    .navigationTitle("title")
            }
    }
}
