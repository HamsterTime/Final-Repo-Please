//
//  Feedback.swift
//  Final Repo Please
//
//  Created by Travis on 12/9/26.
//

import SwiftUI

struct Feedback: View {
    @State private var input: String = ""
    @State private var submit: Bool = false
    @State private var cool: Int = 0
    var body: some View {
        VStack{
            Text("Answer These Questions For Feedback:")
            List{
                Text("Rate our games out of 5")
                Text("3 Things That Are Good About Our Games")
                Text("What Can Be Improved")
                Text("Any Bugs Experienced (Crickets, Ants etc?)")
            }
            .frame(width: .infinity, height: 300)
            Stepper("Rating Out Of 5", value: $cool, in: 0...5)
            Text("\(cool)")
            TextField("Feedback", text: $input)
            .textFieldStyle(.roundedBorder)
            .foregroundStyle(.black)
            .frame(width: .infinity, height: 80)
            Button("Send Feedback"){
              submit = true
            }
            .bold()
            .padding()
            .frame(
                maxWidth: .infinity,
                maxHeight: 40
            )
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            if submit == true{
                Text("We Do Not Read Feedback You Wasted Your Time")
            }
        }
    }
}

#Preview {
    Feedback()
}
