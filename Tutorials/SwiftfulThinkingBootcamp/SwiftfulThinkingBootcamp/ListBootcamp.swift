//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/14/22.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits : [String] = ["apple", "orange", "peach", "banana"]
    
    @State var veggies : [String] = ["potatio","adlo"]
    
    var body: some View {
        NavigationView {
            List {
                
                Section(
                    header: Text("fruits")) {
                    ForEach(fruits, id: \.self) {fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    }
                
                Section(
                    header: Text("veggies")) {
                    ForEach(veggies, id: \.self) {veggie in
                        Text(veggie.capitalized)
                    }
                    
                    }
                
                }
                
            .listStyle(GroupedListStyle())
            .navigationTitle("grocery list")
            .navigationBarItems(
                leading: EditButton(),
                trailing: AddButton
            )
        }
    }
        
    var AddButton : some View {
        Button("add", action: {
            add()
        })
    }
    

    func delete(indexSet : IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices : IndexSet, newOffset : Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("coconut")
    }
}


struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
