//
//  AssetSectionView.swift
//  MyAssets
//
//  Created by Isaac Kim on 6/8/22.
//

import SwiftUI

struct AssetSectionView: View {
    @ObservedObject var assetSection: Asset
    
    var body: some View {
        VStack(spacing: 20) {
            AssetSectionHeaderView(title: assetSection.type.title)
            ForEach(assetSection.data) { asset in
                HStack {
                    Text(asset.title)
                        .font(.title)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(asset.amount)
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                Divider()
                
            }
        }
        .padding()
    }
}

struct AssetSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let asset = Asset(id: 0,
                          type: .bankAccount,
                          data: [
                           AssetData(id: 0, title: "Bank 1", amount: "$5300"),
                           AssetData(id: 1, title: "Bank 2", amount: "$6300"),
                           AssetData(id: 2, title: "Bank 3", amount: "$7300"),
                           AssetData(id: 33, title: "Bank 4", amount: "$8300"),
                          ])
        
        AssetSectionView(assetSection: asset)
        
    }
}
