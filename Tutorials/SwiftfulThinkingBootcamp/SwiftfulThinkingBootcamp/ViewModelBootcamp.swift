//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name : String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray : [FruitModel] = []
    @Published var isLoading : Bool = false
    
    init() {
        getFruits()
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "orange", count: 3)
        let fruit2 = FruitModel(name: "apples", count: 6)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.isLoading = false
        }
        
        
       
    }
    
}

struct ViewModelBootcamp: View {
    
    //  use StateObject on creation, ObservedObject on second view
    
    @StateObject var fruitViewModel : FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            let extractedExpr: NavigationLink<Image, NextScreen> = NavigationLink(
                destination: NextScreen(fruitViewModel: fruitViewModel),
                label: {
                    Image(systemName: "arrow.right")
                })
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) {fruit in
                        
                        HStack {
                            Text("\(fruit.count)")
                            Text("\(fruit.name)")
                        }
                        
                        
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    extractedExpr)
                                    
            
        }
        
    }
    

    
}


struct  NextScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack {
                ForEach(fruitViewModel.fruitArray) {fruit in
                    Text(fruit.name)
                    
                }
            }
        }
        
        
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
        //NextScreen()
    }
}
