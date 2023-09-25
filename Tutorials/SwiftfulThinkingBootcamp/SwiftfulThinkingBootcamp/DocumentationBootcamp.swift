//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    
    // MARK: PROPERTIES
    
    /* Things to do :
     1)
     2)
     3)
     
     
     */
    
    @State var showAlert : Bool = false
    @State var data : [String] = ["A", "B", "C"]
    
    // MARK: BODY
    
    var body: some View {
        NavigationView { //START: NAV
            ZStack {
                
                //background
                
                //foreground
                
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("alert", action: {
                                            showAlert.toggle()
                                        })
                
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "alert!")
            })
                
                
            }
            
            Spacer()
        } //END: NAV
    }
    /// Foreground layer that holds scroll view
    private var foregroundLayer : some View {
        ScrollView { //START: SCROLLV
            Text("hi")
            
            ForEach(data.indices) {index in
                Text(data[index])
                    .font(.headline)
            }
        } //END: SCROLLV
    }
    
    // MARK: FUNCTIONS
    
    /// Gets alert with title
    ///
    /// This function creates and returns an alert with a title based on text parameter but no message
    ///```
    ///getAlert(text: "hi") -> Alert(title: Text("hi"))
    ///```
    ///
    ///
    /// - Warning: aws
    /// - Parameter text: title for alert
    /// - Returns: Returns Alert with title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
