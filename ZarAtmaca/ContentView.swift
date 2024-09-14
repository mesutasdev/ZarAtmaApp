//
//  ContentView.swift
//  ZarAtmaca
//
//  Created by Mesut As Developer on 14.09.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack  {
          Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack (alignment: .center, spacing: 50){
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 200)
                Text("Kumarı Daima Oynatan Kazanır!")
                    .foregroundStyle(.white)
                    .font(.headline)
                
                HStack{
                    ZarView(n: leftDiceNumber)
                    ZarView(n: rightDiceNumber)
                }
               
                Button(action: {
                    
                    leftDiceNumber = .random(in: 1...6)
                    rightDiceNumber = .random(in: 1...6)
                    
                    
                }){
                    Text("Zar At")
                        .font(.title)
                        .frame(width: 200, height: 90)
                        .background(.white)
                        .cornerRadius(20)
                        .padding()
                        
                    
                       
                }
                
                
                
            }
        }
       
    }
}



#Preview {
    ContentView()
}


struct ZarView: View {
    
    let n : Int
    
    var body: some View {
        Image("zar\(n)")
            .resizable()
            .frame(width: 150, height: 150)
            .padding()
    }
}
