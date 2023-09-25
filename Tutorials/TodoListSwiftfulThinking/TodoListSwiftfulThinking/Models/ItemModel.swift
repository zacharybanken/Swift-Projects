//
//  ItemModel.swift
//  TodoListSwiftfulThinking
//
//  Created by Zachary Banken on 6/16/22.
//

import Foundation


//immutable (all let instead of var)
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}


