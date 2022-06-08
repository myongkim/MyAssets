//
//  ContentView.swift
//  MyAssets
//
//  Created by Isaac Kim on 6/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .asset
    

    
    var body: some View {
         TabView(selection: $selection) {
            AssetView()
                .tabItem {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("Asset")
                }
                .tag(Tab.asset)
            Color.blue
                .edgesIgnoringSafeArea(.top)
                .tabItem {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("Recommendation")
                    
                }
                .tag(Tab.recommend)
            
            Color.yellow
                .edgesIgnoringSafeArea(.top)
                .tabItem{
                    Image(systemName: "bell.fill")
                    Text("Alert")
                }
                .tag(Tab.alert)
            Color.red
                .edgesIgnoringSafeArea(.top)
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Setting")
                }
                .tag(Tab.setting)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Tab {
    case asset
    case recommend
    case alert
    case setting
}
