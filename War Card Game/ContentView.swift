//
//  ContentView.swift
//  War Card Game
//
//  Created by George on 6/29/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "back"
    @State var cpuCard: String = "back"
    
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Spacer()
                Image("logo")
                Spacer()
                HStack() {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                .shadow(radius: 5)
                Spacer()
                Button {
                    handleDealButton()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack() {
                    Spacer()
                    VStack() {
                        Text("Player")
                            .font(.headline)
                            .padding(10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack() {
                        Text("CPU")
                            .font(.headline)
                            .padding(10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                Spacer()
            }
            
        }
    }
    
    func handleDealButton() {
        let playerValue = Int.random(in: 2...14)
        let cpuValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerValue)
        cpuCard = "card" + String(cpuValue)
        if (playerValue > cpuValue) {
            playerScore = playerScore + 1
        } else if (cpuValue > playerValue) {
            cpuScore = cpuScore + 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
