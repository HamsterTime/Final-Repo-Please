//
//  ContentView.swift
//  Final Repo Please
//
//  Created by Travis on 31/8/26.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Bool = false
    var body: some View {
        TabView{
            NavigationStack{
                VStack{
                    ZStack{
                        Circle()
                            .frame(width:100, height:100)
                        if counter == true{
                            Text("On")
                                .foregroundStyle(.white)
                        }
                        if counter == false{
                            Text("Off")
                                .foregroundStyle(.white)
                        }
                    }
                    HStack{
                        Button("+"){
                            counter = true
                        }
                        
                        .bold()
                        .padding()
                        .frame(
                            maxWidth: 40,
                            maxHeight: 40
                        )
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        Button("-"){
                            counter = false
                        }
                        .bold()
                        .padding()
                        .frame(
                            maxWidth: 40,
                            maxHeight: 40
                        )
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                }
                .toolbar {
                    NavigationLink{
                        Feedback()
                    }label: {
                        Button {}
                        label: {
                            Text("Feedback Page")
                            
                        }
                    }
                }
            }
            .tabItem {
                Label(
                    "Main Game",
                    systemImage: "house"
                )
            }
        
                
            }
        }
    }



#Preview {
    ContentView()
}
