//
//  AssetCardSectionView.swift
//  MyAssets
//
//  Created by Isaac Kim on 6/8/22.
//

import SwiftUI

struct AssetCardSectionView: View {
    @State private var selectedTab = 1
    @ObservedObject var asset: Asset
    
    var assetData: [AssetData] {
        return asset.data
    }
    
    var body: some View {
        VStack {
            AssetSectionHeaderView(title: asset.type.title)
            TabMenuView(
                tabs: ["Previous", "Current","Next"],
                selectedTab: $selectedTab,
                updated: .constant(.nextMonth(amount: "$10000")))
            TabView(
                    selection: $selectedTab,
                    content: {
                        ForEach(0...2, id:\.self) { i in
                            VStack {
                                ForEach(assetData) { data in
                                    HStack {
                                        Text(data.title)
                                            .font(.title)
                                            .foregroundColor(.secondary)
                                        Spacer()
                                        Text(data.creditCardAmounts![i].amount)
                                            .font(.title2)
                                            .foregroundColor(.primary)
                                    }
                                    Divider()
                                }
                                
                            }
                            tag(i)
                        }
            })
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
        }
        .padding()
        
    }
}

struct AssetCardSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let asset = AssetSummaryData().assets[5]
        AssetCardSectionView(asset: asset)
    }
}
