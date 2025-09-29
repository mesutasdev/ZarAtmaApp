//
//  ZarAtmacaApp.swift
//  ZarAtmaca
//
//  Created by Mesut As Developer on 14.09.2024.
//

import SwiftUI

@main
struct ZarAtmacaApp: App {
    
    @State var showPreviewPage = true
    
    var body: some Scene {
        WindowGroup {
            
            if showPreviewPage {
                
                PreViewPage()
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                            showPreviewPage = false
                        }
                    }
                
            }else {
                ContentView()
            }
        
            
        }
    }
}
