//
//  PreViewPage.swift
//  ZarAtmaca
//
//  Created by Mesut As Developer on 14.09.2024.
//

import SwiftUI

struct PreViewPage: View {
    var body: some View {
        ZStack{
            Image("background")
            
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("ZARLAR ATILIYOR..")
                    .foregroundStyle(.white)
                    .font(.title)
                
                
            }
        }
    }
}

#Preview {
    PreViewPage()
}
