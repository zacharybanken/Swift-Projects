//
//  NavigationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/14/22.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                NavigationLink("2nd screen", destination: MyOtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                Text("Hello, World!")
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading:
                    
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                    })
                    .accentColor(.gray)
            )
        }
        
    }
}

struct MyOtherScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .navigationTitle("Green screen")
//                .navigationBarHidden(true)
                
                
            
            VStack {
                
                Button("back button") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("click", destination: Text("3rd screen"))
            }
        }
    }
}

struct NavigationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootcamp()
    }
}
