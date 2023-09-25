//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor : Color = Color.purple
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("tutorial")
                .font(.headline)
            Text("how to use context")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                
                backgroundColor = .black
                
            }, label: {
                Label("1", systemImage: "flame.fill")
            })
            
            Button(action: {
                
                backgroundColor = .green
                
            }, label: {
                Text("2")
            })
            
            Button(action: {
                
                backgroundColor = .gray
                
            }, label: {
                HStack {
                    Text("3")
                    Image(systemName: "heart.fill")
                }
            })
            
        }))
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}


