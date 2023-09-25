//
//  ListView.swift
//  TodoListSwiftfulThinking
//
//  Created by Zachary Banken on 6/16/22.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        
        
        
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else {
                List {
                    
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    // complete item
                                    
                                    listViewModel.updateItem(item: item)
                                    
                                    
                                    
    
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                    
                    
                }
             //  .swipeActions(edge: VerticalEdge, allowsFullSwipe: true) {
//                    AddView()
               // }
                //.simultaneousGesture(listViewModel.detectDirectionalDrags)
                
            }
        }
        //.onTapGesture { }
       // .gesture(listViewModel.detectDirectionalDrags)
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List")
        .navigationBarItems(
            leading: EditButton(),
                            
            trailing:
                NavigationLink("Add", destination: AddView()))
        
    }
        
        
        
    
    
    
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ListView()
            }
            .preferredColorScheme(.dark)
            .environmentObject(ListViewModel())
      //  .previewInterfaceOrientation(.landscapeRight)
            NavigationView {
                ListView()
            }
            .preferredColorScheme(.dark)
            .environmentObject(ListViewModel())
           // .previewInterfaceOrientation(.landscapeRight)
        }
       
    }
}


