//
//  ContentView.swift
//  ParallaxView
//
//  Created by Andrew Kuzmich on 28.07.2023.
//

import SwiftUI
import KystParallax

struct ContentView: View {
    var body: some View {
        Spacer()
            .frame(minWidth: 300, minHeight: 300)
            .background{
                ZStack {
#if os(iOS)
                    ParallaxLayer(image: Image("depth-1"), magnitude : 10)
                    ParallaxLayer(image: Image("depth-2"), magnitude : 10)
                    ParallaxLayer(image: Image("depth-3"), magnitude : 10)
#elseif os(macOS)
                    ParallaxLayer(image: Image("depth-1"), speed: 10 )
                    ParallaxLayer(image: Image("depth-2"), speed: 30 )
                    ParallaxLayer(image: Image("depth-3"), speed: 50)
#endif
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
