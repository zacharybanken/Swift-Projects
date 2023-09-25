//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct ProfileView: View {
    
    //storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(currentUserName ?? "your name")
            Text("Age: \(currentUserAge ?? 0)")
            Text("Gender: \(currentUserGender ?? "unknown")")
            Text("sign out")
                .foregroundColor(.white)
                .frame(height:55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .shadow(radius: 10)
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        signOut()
                    }
                    
                }
        }
        .font(.title)
        .padding()
        .padding(.vertical,40)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserGender = nil
        currentUserName = nil
        currentUserAge = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
