//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/12/22.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data : [String] = ["Hi","hello","salutations"]
    let str : String = "Hello"
    
    var body: some View {
        VStack(alignment:.leading) {
            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index) ")
            }
            
        
        }
       
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
