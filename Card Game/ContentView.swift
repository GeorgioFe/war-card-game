//
//  ContentView.swift
//  Card Game
//
//  Created by Georgio Feghali on 11/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
        
            Image("background")
            
            VStack(alignment: .center){
            Spacer()
                Image("logo")
                    
                    
                    
                Spacer()
                
                HStack(alignment: .center){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                        
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack{
                    Spacer()
                    Text("Player")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Text("CPU")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
                HStack{
                    Spacer()
                    Text(String(playerScore)).font(.title).foregroundColor(.white)
                    Spacer()
                    Text(String(cpuScore)).font(.title).foregroundColor(.white)
                    Spacer()
                }
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
