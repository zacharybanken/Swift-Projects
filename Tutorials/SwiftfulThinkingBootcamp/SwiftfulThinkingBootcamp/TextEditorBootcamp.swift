//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText : String = "Starting text"
    @State var savedText : String = ""
    
    var body: some View {
        NavigationView{
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save")
                        .frame(maxWidth: .infinity,maxHeight: 30)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                        .foregroundColor(.white)

                })
                
                
                Text(savedText)
                
                Spacer()
                
            }
            .padding()
            .background(Color.green)
            .navigationTitle("Title")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
