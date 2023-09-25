//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/14/22.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen : Bool = false
    
    var body: some View {
        
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Button("button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                
                Spacer()
            }
//            //Method 1
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()})
            //Method 2
            if showNewScreen {
               NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .transition(.move(edge: .bottom))
                .animation(.spring())
            }
            
            
            
        }
        
    }
}

struct NewScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen : Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                
                showNewScreen.toggle()
                
                //presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
