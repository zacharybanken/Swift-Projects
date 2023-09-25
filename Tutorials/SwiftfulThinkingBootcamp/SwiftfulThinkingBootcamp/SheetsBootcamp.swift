//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/14/22.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                
                showSheet.toggle()
                
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            .sheet(isPresented: $showSheet, content: {
                SheetScreen()
            })
        }
    }
}

struct SheetScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body : some View {
        ZStack(alignment: .topLeading) {
            Color.red.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            
            Button(action: {
               
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
//                    .background(Color.white.cornerRadius(10))
            })
            .padding()
            
            
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
