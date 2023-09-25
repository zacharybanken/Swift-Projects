//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        Button("click") {
            showSheet.toggle()
        }
        .actionSheet(isPresented: $showSheet, content: getSheet)
    }
    
    func getSheet() -> ActionSheet {
        
        let button1 : ActionSheet.Button = .default(Text("default"))
        let button2 : ActionSheet.Button = .destructive(Text("delete"))
        
        return ActionSheet(title: Text("title"),
                           message: Text("message"),
                           buttons: [button1,button2])
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
