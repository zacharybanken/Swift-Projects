//
//  InitBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/12/22.
//

import SwiftUI

struct InitBootcamp: View {
    
    let backgroundColor : Color
    let fruit : String
    let number : Int
    
    init(number: Int, fruit: Fruit) {
        
        self.number = number
        
        if fruit == .apple {
            self.fruit = "apples"
            self.backgroundColor = .red
        } else {
            self.fruit = "oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack {
            Text("\(number)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(fruit)
                .foregroundColor(.white)
        }
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitBootcamp(number: 100,
                         fruit: .orange
            )
            InitBootcamp(number: 200,
                         fruit: .apple
            )
        }
    }
}
