//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection : String = "1"
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attr : [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attr, for: .selected)
        
    }
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Age:")
                Text(selection)
            }
            
            Picker(selection: $selection,
                   label:
                    
                    HStack {
                        Text("Picker")
                        Text(selection)
                    }
                    .padding()
                   
                   ,
                   content: {
                    
                    ForEach(0..<10) {age in
            
                        Text("\(age)").tag("\(age)")

                    }
                    
               })
                .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
