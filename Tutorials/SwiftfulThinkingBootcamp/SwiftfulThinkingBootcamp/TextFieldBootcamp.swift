//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText : String = ""
    @State var dataArray : [String] = []
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextField("type here", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .font(.headline)
                    .foregroundColor(.red)
                
                Button(action: {
                    saveText()
                }, label: {
                    Text("Save")
                    
                })
                
                ForEach(dataArray, id: \.self) { data in
                    
                    Text(data)
                        .frame(alignment: .leading)
                    
                }
                .frame(alignment: .leading)
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextFields!")
        }
        
        
        
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
