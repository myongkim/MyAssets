//
//  AssetView.swift
//  MyAssets
//
//  Created by Isaac Kim on 6/7/22.
//

import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    Spacer()
                    AssetMenuGridView()
                    AssetBannerView()
                        .aspectRatio(5/2, contentMode: .fit)
                }
            }
            .background(Color.gray.opacity(0.2))
            .navigationBarWithButtonStyle("My Asset")
            
        }
    }
}

struct AssetView_Previews: PreviewProvider {
    static var previews: some View {
        AssetView()
    }
}
