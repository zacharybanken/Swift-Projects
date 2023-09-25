//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/12/22.
//

import SwiftUI

struct FrameBootcamp: View
{
    var body: some View
    {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .leading)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .background(Color.red)
            .frame(maxHeight: .infinity)
            .background(Color.purple)
    }
}

struct FrameBootcamp_Previews: PreviewProvider
{
    static var previews: some View
    {
        FrameBootcamp()
    }
}
