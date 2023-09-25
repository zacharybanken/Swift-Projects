//
//  AddView.swift
//  TodoListSwiftfulThinking
//
//  Created by Zachary Banken on 6/16/22.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("type here", text: $textFieldText)
                    .padding()
                    .background(Color(UIColor.secondarySystemBackground))
                    .frame(height: 55)
                    .cornerRadius(10)
                
                
                Button(action: saveButtonPressed,
                       label: {
                        Text("save")
                            .foregroundColor(.white)
                            .frame(height:55)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                })
            }
            .padding(15)
                
        }
        .navigationTitle("Add Item")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss() // go back one in hierarchy
        } else {
            //alert
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Must be at least 3 characters"
            showAlert.toggle()
            return false
        } else {
            return true
        }
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .preferredColorScheme(.dark)
        .environmentObject(ListViewModel())
        
    }
}
