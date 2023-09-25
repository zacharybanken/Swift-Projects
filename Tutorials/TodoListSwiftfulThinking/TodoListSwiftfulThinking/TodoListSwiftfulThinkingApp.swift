//
//  TodoListSwiftfulThinkingApp.swift
//  TodoListSwiftfulThinking
//
//  Created by Zachary Banken on 6/16/22.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data
 View - UI
 ViewModel - manages models for View
 
 */

@main
struct TodoListSwiftfulThinkingApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
                    //.gesture(listViewModel.detectDirectionalDrags)
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
           // .gesture(listViewModel.detectDirectionalDrags)
            
        }
    }
}
