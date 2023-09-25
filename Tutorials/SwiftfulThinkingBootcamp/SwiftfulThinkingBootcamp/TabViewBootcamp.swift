//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Zachary Banken on 6/15/22.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTab : Int = 2
    let icons : [String] = [
        "heart.fill", "globe", "house.fill"
    ]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                
               
                VStack {
                    
                    Spacer()
                    
                    Image(systemName: icon)
                        .background(
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
                    
                    Spacer()
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        
        
//        TabView(selection: $selectedTab) {
//
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("home")
//                }
//                .tag(0)
//            BrowseView()
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("browse")
//                }
//                .tag(1)
//            Text("profile")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("profile")
//                }
//                .tag(2)
//
//        }
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab : Int
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("Home tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                    
                }, label: {
                    Text("go to profile")
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                })
                .accentColor(.red)
            }
            
            
        }
        
    }
}

struct BrowseView: View {
    var body: some View {
        Text("browse")
            
    }
}
