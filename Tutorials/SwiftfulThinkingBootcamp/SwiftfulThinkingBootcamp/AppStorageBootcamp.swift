//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
   // @State var currentUserName: String? = nil
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(currentUserName ?? "Add name here")
                
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Ya boy"
                currentUserName = name
                //UserDefaults.standard.set(name, forKey: "name")
                
            }
            
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")}
        }
    }


struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
