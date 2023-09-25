//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/13/22.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        
        ZStack{
            
            //bg
            backgroundLayer
            
            
            //content
            
            contentLayer
        
        }
    }
    var backgroundLayer : some View {
        Color.red.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    var contentLayer : some View {
        
        HStack{
            MyItem(title: "apples", color: .purple, count: 3)
            MyItem(title: "bananas", color: .yellow, count: 34)
            MyItem(title: "oranges", color: .orange, count: 11)
        }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title : String
    let color : Color
    let count : Int
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
