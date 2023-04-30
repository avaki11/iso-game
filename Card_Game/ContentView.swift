//
//  ContentView.swift
//  Card_Game
//
//  Created by Azaraiah Vaki on 30/4/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo").padding(.bottom, 100.0)
                HStack{
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                }
                //This enables image buttons
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    VStack{
                        Text("Player One").font(.headline).padding(.bottom, 20)
                        Text(String(playerScore))
                    }.padding(20)
                    
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom, 20)
                        Text(String(cpuScore))
                    }.padding(20)
                }.foregroundColor(Color.white)
                Spacer()
                
            }.padding(.horizontal, 50)
        }
    }
    
    func deal() {
        //Randomise the player cards
        //Randomise cpu card
        //Update the score
        var randomPlayerInt = Int.random(in: 2...14)
        
        var randomCPUInt = Int.random(in: 2...14)
        if randomPlayerInt > randomCPUInt{
            playerScore += 1
            
        }
        else if randomCPUInt > randomPlayerInt
        {
            cpuScore += 1
        }
         playerCard = "card" + String(randomPlayerInt)
        cpuCard = "card" + String(randomCPUInt)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
