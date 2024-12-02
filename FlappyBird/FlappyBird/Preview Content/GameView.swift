//
//  GameView.swift
//  FlappyBird
//
//  Created by AM Student on 11/11/24.
//

import SwiftUI

struct GameView: View {
    @State private var birdPosition = CGPoint(x: 100, y: 100)
    @State private var isFlapping = false
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            Bird()
                .position(birdPosition)
                .onTapGesture {
                    withAnimation {
                        birdPosition.y -= 50
                    }
                }
        }
        .onAppear(perform: startGame)
    }
    
    func startGame() {
        Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { _ in
            withAnimation {
                birdPosition.y += 5
            }
        }
    }
}
