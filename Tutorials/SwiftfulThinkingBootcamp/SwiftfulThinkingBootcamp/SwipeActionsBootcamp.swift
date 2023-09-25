//
//  SwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/17/22.
//

import SwiftUI

struct SwipeActionsBootcamp: View {
    var body: some View {
        List {
            ForEach(0..<10) {_ in
                Text("hi")
                    .font(.largeTitle)
                Text("hi")
                    .font(.caption)
                    
            }
            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                Button("archive") {
                    
                }
                Button("save") {
                    
                }
                .tint(.green)
                Button("junk") {
                    
                }
                .tint(.red)
                
            }
        }
        
    }
    func delete(indexSet: IndexSet) {
        
    }
}

struct SwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsBootcamp()
    }
}
