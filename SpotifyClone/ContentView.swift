//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Prathmesh Parteki on 12/04/24.
//

import SwiftUI
import SwiftfulRouting

struct ContentView: View {
        
    @Environment (\.router) var router
    
    var body: some View {
        List {
            Button("Open Spotify") {
                router.showScreen(.fullScreenCover) { _ in
                    SpotifyHomeView()
                }
            }
            Button("Open Bumble") {
                router.showScreen(.fullScreenCover) { _ in
                    BumbleHomeView()
                }
            }
            
            Button("Open Netflix") {
                router.showScreen(.fullScreenCover) { _ in
                    NetflixHomeView()
                }
            }
        }
    }
    
}

#Preview {
    RouterView{_ in
        ContentView()
    }
}
