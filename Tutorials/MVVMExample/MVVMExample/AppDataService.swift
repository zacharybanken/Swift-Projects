//
//  AppDataService.swift
//  MVVMExample
//
//  Created by Zachary Banken on 6/19/22.
//

import Foundation

class AppDataService {
    func getUsers(completion: @escaping ([User]) -> Void) {
       
        DispatchQueue.main.async {
            completion([
                User(id: 1, name: "K"),
                User(id: 2, name: "J"),
                User(id: 3, name: "L")
            ])
        }
        
        
    }
}
