//
//  ListViewModel.swift
//  TodoListSwiftfulThinking
//
//  Created by Zachary Banken on 6/16/22.
//

import Foundation
import SwiftUI

/* CRUD functions in ViewModel
 
 create
 read
 update
 delete
 
 */

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet { //called whenever array is changed
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
    

    
    
    init() {
        getItems()
    }
    
    func getItems() {

            
        guard let data = UserDefaults.standard.data(forKey: itemsKey) else { return }
        guard let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else { return }

        self.items = savedItems
        
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()

           
            
        }
        
    }
    
    func saveItems() {
        //UserDefaults.standard.set
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
    
}
