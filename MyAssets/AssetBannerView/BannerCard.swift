//
//  BannerCard.swift
//  MyAssets
//
//  Created by Isaac Kim on 6/7/22.
//

import SwiftUI

struct BannerCard: View {
    var banner: AssetBanner
    
    var body: some View {
        Color(banner.backgroundColor)
//        ZStack {
//            Color(banner.backgroundColor)
//            VStack {
//                Text(banner.title)
//                    .font(.title)
//                Text(banner.description)
//                    .font(.subheadline)
//            }
//        }
        //one way
            .overlay(
                VStack {
                    Text(banner.title)
                        .font(.title)
                    Text(banner.description)
                        .font(.subheadline)
                }

            )
    }
}

struct BannerCard_Previews: PreviewProvider {
    static var previews: some View {
        let banner0 = AssetBanner(title: "Important Message", description: "read the message", backgroundColor: .red)
        
        BannerCard(banner: banner0)
    }
}
