//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI


struct UserModel : Identifiable {
    let id : String = UUID().uuidString
    let displayName : String
    let userName : String
    let followerCount : Int
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nk", userName: "nickC", followerCount: 400),
        UserModel(displayName: "Sm123", userName: "emilyH", followerCount: 432)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 40) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack {
                            Text(user.userName)
                                .font(.headline)
                            Text("@\(user.displayName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                            
                        }
                        
                        Spacer()
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                                
                            
                        }
                    }
                    .padding(.vertical,20)
                }
               
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
