//
//  ContentView.swift
//  MVVMExample
//
//  Created by Zachary Banken on 6/19/22.
//

import SwiftUI

struct UsersView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        List(viewModel.users) {user in
            Text(user.name)
        }
        .onAppear(perform: viewModel.getUsers)
    }
}

extension UsersView {
    class ViewModel: ObservableObject {
        @Published var users = [User]()
        
        let dataService = AppDataService()
        
        func getUsers() {
            dataService.getUsers {[weak self] users in
                                 self?.users = users
            }
        }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
