//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/13/22.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(),spacing:10),
        GridItem(.flexible(),spacing:10),
        GridItem(.flexible(),spacing:10)
        
    ]
    
    
    var body: some View {
        ScrollView{
            
            Rectangle()
                .fill(Color.white)
                .frame(height:400)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            LazyVGrid(
                      columns: columns,
                      alignment: .center,
                      spacing: 10,
                      pinnedViews: [.sectionHeaders],
                      content: {
                        Section(header:
                                    Text("Section 1")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                    .background(Color.blue)
                                    .padding()
                            
                        
                       ) {
                            ForEach(0..<50) {index in
                                Rectangle()
                                    .frame(height:120)
                            }
                        }
                        
                        Section(header:
                                    Text("Section 2")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                    .background(Color.green)
                                    .padding()
                            
                        
                       ) {
                            ForEach(0..<50) {index in
                                Rectangle()
                                    .frame(height:120)
                            }
                        }
                
            })
            
            LazyVGrid(columns: columns) {
                
            }
        
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
