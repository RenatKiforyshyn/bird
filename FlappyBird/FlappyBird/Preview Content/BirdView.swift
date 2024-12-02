//
//  BirdView.swift
//  FlappyBird
//
//  Created by AM Student on 11/11/24.
//

import SwiftUI

struct Bird: View {
    var body: some View {
        Image("Bird")
            .resizable()
            .frame(width: 50, height: 50)
    }
}
#Preview {
    Bird()
}
