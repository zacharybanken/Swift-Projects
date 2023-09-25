//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/11/22.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Helllo asldkfja;lskfdhas;ldfjkha;sdlfjasl;dfkjas;ldkfja;lsdkfjkhas;ldkfjasd;flkjas;dlfkjasd;lfkjas;dlfkj".capitalized)
            .baselineOffset(15)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.9) //percent of font size
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
