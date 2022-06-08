//
//  AssetBannerView.swift
//  MyAssets
//
//  Created by Isaac Kim on 6/7/22.
//

import SwiftUI

struct AssetBannerView: View {
    let bannerList: [AssetBanner] = [
        AssetBanner(title: "Important Message", description: "look for the message", backgroundColor: .red),
        AssetBanner(title: "Important Message 2", description: "look for the message", backgroundColor: .yellow),
        AssetBanner(title: "Important Message 3", description: "look for the message", backgroundColor: .blue),
        AssetBanner(title: "Important Message 4", description: "look for the message", backgroundColor: .orange)
    ]
    
    @State private var currentPage = 0
    
    var body: some View {
        let bannerCards = bannerList.map { BannerCard(banner:$0)}
        
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: bannerCards, currentPage: $currentPage)
            PageControl(numberOfPages: bannerList.count, currentPage: $currentPage)
                .frame(width: CGFloat(bannerCards.count * 18))
                .padding(.trailing)
        }
       
    }
}

struct AssetBannerView_Previews: PreviewProvider {
    static var previews: some View {
        AssetBannerView()
            .aspectRatio(5/2, contentMode: .fit)
    }
}
