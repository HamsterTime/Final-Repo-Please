//
//  Feedback.swift
//  Final Repo Please
//
//  Created by Travis on 12/9/26.
//

import SwiftUI

struct Feedback: View {
    @State private var textInput: String = ""
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
            TextField("Feedback", text: $textInput)
            .textFieldStyle(.roundedBorder)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    Feedback()
}
