//
//  ContentView.swift
//  War Card Game
//
//  Created by Alexander Da Luz on 10/29/25.
//

import SwiftUI

        struct ContentView: View {

            @State private var playerCard = "card2"
            @State private var cpuCard = "card3"
            @State private var playerScore = 0
            @State private var cpuScore = 0

            var body: some View {

                ZStack {
                    Image("background")
                        .resizable()
                        .ignoresSafeArea()

                    VStack {

                        Spacer()

                        Image("logo")

                        Spacer()

                        HStack(spacing: 50) {
                            Image(playerCard)
                            Image(cpuCard)
                        }

                        Spacer()

                        Button(action: dealCards) {
                            Image("dealbutton")
                        }

                        Spacer()

                        HStack(spacing: 80) {
                            VStack {
                                Text("Player")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding(.bottom, 10)
                                Text(String(playerScore))
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            }

                            VStack {
                                Text("CPU")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding(.bottom, 10)
                                Text(String(cpuScore))
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            }
                        }

                        Spacer()
                    }
                }
            }

            func dealCards() {
                let playerRandom = Int.random(in: 2...14)
                let cpuRandom = Int.random(in: 2...14)

                playerCard = "card\(playerRandom)"
                cpuCard = "card\(cpuRandom)"

                if playerRandom > cpuRandom {
                    playerScore += 1
                } else if cpuRandom > playerRandom {
                    cpuScore += 1
                }
            }
        }

        #Preview {
            ContentView()
        }

#Preview {
    ContentView()
}
