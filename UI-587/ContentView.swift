//
//  ContentView.swift
//  UI-587
//
//  Created by nyannyan0328 on 2022/06/13.
//

import SwiftUI

struct ContentView: View {
    @State var tab : [Tab] = []
    var body: some View {
        NavigationStack(path:$tab){
            
            TabView{
                
                Text("A")
                    .tabItem {
                        
                        Image(systemName: "person")
                            
                    }
                
                Text("B")
                    .tabItem {
                        
                       Image(systemName: "magnifyingglass")
                            
                    }
                
                
                Text("C")
                    .tabItem {
                        
                        Image(systemName: "gear")
                            
                    }
                
                
                Text("D")
                    .tabItem {
                        
                        Image(systemName: "suit.heart.fill")
                            
                    }
            }
            .navigationTitle("InstaGram")
         
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button {
                        
                        tab.append(.A)
                        
                        
                    } label: {
                        
                        Image(systemName: "paperplane")
                    }

                    
                    
                    
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    Button {
                        
                        tab.append(.C)
                    
                        
                    } label: {
                        
                        Image(systemName: "camera")
                    }

                    
                    
                    
                }
            }
            .navigationDestination(for: Tab.self) { value in
                
                
                switch value{
                    
                    
                case.A : VStack{
                    
                    Button("B"){
                        
                        
                        tab.append(.C)
                    
                        
                        
                    }
                    
                    Button("C"){
                        
                        
                        tab.append(.B)
                    
                        
                        
                    }
                    
                    
                    
                }
                    
                case.B : VStack{
                    
                    Button("B"){
                        
                        
                    }
                    
                    
                }
                case .C : VStack{
                    
                    Button("C"){
                        
                        
                    }
                    
                    
                }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Tab : String,Hashable{
    
    case A = "B"
    case B = "C"
    case C = "D"
}
