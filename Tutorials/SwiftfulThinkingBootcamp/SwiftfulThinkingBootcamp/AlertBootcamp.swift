//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert : Bool = false
    @State var alertType : myAlerts? = nil
    //@State var alertTitle : String = ""
    //@State var alertMessage : String = ""
    @State var backgroundColor : Color = Color.yellow
    
    enum myAlerts {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("click 1") {
                    alertType = .success
                    //alertTitle = "error"
                    //alertMessage = "this is the error"
                    showAlert.toggle()
                    
                }
                Button("click 2") {
                    alertType = .error
//                    alertTitle = "success"
//                    alertMessage = "you did it"
                    showAlert.toggle()
                    
                }
                
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error:
            return Alert(title: Text("error"))
        case .success:
            return Alert(title: Text("success"))
        default:
            return Alert(title: Text("forgot"))
        }
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK")))
        
//        return Alert(title: Text("title"),
//                     message: Text("Error name"),
//                     primaryButton: .cancel(),
//                     secondaryButton: .destructive(Text("Make red"),action: {
//                       backgroundColor = .red
//                     }))
    }
}


struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
