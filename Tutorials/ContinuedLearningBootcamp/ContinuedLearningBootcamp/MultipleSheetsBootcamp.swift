//
//  MultipleSheetsBootcamp.swift
//  ContinuedLearningBootcamp
//
//  Created by Zachary Banken on 6/19/22.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    
}

struct MultipleSheetsBootcamp: View {
    
    @State var selectedModel: RandomModel? = nil
    
    var body: some View {
        VStack(spacing: 20) {
            Button("One") {
                selectedModel = RandomModel(title: "one")
            }

            Button("Two") {
                selectedModel = RandomModel(title: "two")
             }
  
        }
        .sheet(item: $selectedModel) { model in
            NextScreen(selectedModel: model)
        }
    }
}


struct NextScreen: View {
    
    //@Binding var selectedModel: RandomModel
    
    let selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

struct MultipleSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetsBootcamp()
    }
}
