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
        ZStack{
            Rectangle()
                .frame(width: .infinity, height: 100)
            Toggle("Final Toggle Game", isOn: $Tiggle)
                .foregroundStyle(.white)
                .bold()
        }
    }
}

#Preview {
    Stage2(Tiggle: .constant(false))
}
