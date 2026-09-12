//
//  Stage2.swift
//  Final Repo Please
//
//  Created by Travis on 12/9/26.
//

import SwiftUI

struct Stage2: View {
    @Binding var Tiggle: Bool
    var body: some View {
        VStack{
            Text("Try Pressing This White Button")
            ZStack{
                Rectangle()
                    .frame(width: .infinity, height: 100)
                Toggle("Final Toggle Game", isOn: $Tiggle)
                    .foregroundStyle(.white)
                    .bold()
            }
            if Tiggle == true{
                Text("On")
            }
            if Tiggle == false{
                Text("Off")
            }
            
        }
    }
}

#Preview {
    Stage2(Tiggle: .constant(false))
}
