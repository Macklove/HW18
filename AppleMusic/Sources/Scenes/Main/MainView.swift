//
//  MainView.swift
//  AppleMusic
//
//  Created by Mакулов Евгений on 08.09.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note")
                        Text("Медиатека")
                    }
                
                NavigationView {
                    RadioView()
                }
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }

                Text("Поиск")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)

            PlaybackView()
                .offset(y: Metrics.PlaybackViewYOffset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

// MARK: - Metrics

extension MainView {
    enum Metrics {
        static let PlaybackViewYOffset: CGFloat = -47
    }
}
