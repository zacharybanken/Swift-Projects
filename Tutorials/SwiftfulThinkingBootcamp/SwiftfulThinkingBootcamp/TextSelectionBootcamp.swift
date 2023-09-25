//
//  TextSelectionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/17/22.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        Text("hi, world! It's me")
            .textSelection(.enabled)
    }
}

struct TextSelectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBootcamp()
    }
}
