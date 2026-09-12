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
                    if counter == true{
                        
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink("Feedback Page") {
                            Feedback()
                        }
                    }
                }
                
                .navigationTitle("Tutorial To Toggle Stuff")
            }
            .tabItem {
                Label(
                    "Main Game",
                    systemImage: "house"
                )
            }
            NavigationStack{
                VStack{
                    Text("Not Useless at all - Fresh Tomatoes")
                    Text("10/10 useful - States Times")
                    Text("Now I know How To Turn Things Off or On - BNA")
                    Text("Most Addicting Tutorial - PopaPola")
                    Text("Ekansh Approved - Not Fake Ekansh")
                    Spacer()
                }
                .navigationTitle("Cool Sponsors Not Fake")
            }
                .tabItem {
                    Label(
                        "Words From Sponsors",
                        systemImage: "star.fill"
                    )
                }
            
            
            
        }
    }
    
}

#Preview {
    ContentView()
}
