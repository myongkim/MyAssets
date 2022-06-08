//
//  AssetMenu.swift
//  MyAssets
//
//  Created by Isaac Kim on 6/7/22.
//

import Foundation
import QuartzCore

enum AssetMenu: String, Identifiable, Decodable {
    case creditScore
    case bankAccount
    case investment
    case loan
    case insurance
    case creditCard
    case cash
    case realEstate
    
    // identiable needs a id
    var id: String {
        return self.rawValue
    }
    
    var systemImageName: String {
        switch self {
        case .creditScore:
            return "number.circle"
        case .bankAccount:
            return "banknote"
        case .investment:
            return "bitcoinsign.circle"
        case .loan:
            return "hand.wave"
        case .insurance:
            return "lock.shield"
        case .creditCard:
            return "creditcard"
        case .cash:
            return "dollarsign.circle"
        case .realEstate:
            return "house.fill"
            
        }
        
    }
    
    var title: String {
        switch self {
        case .creditScore:
            return "Credit Score"
        case .bankAccount:
            return "Bank Account"
        case .investment:
            return "Investment"
        case .loan:
            return "Loan"
        case .insurance:
            return "Insurance"
        case .creditCard:
            return "Credit Card"
        case .cash:
            return "Cash"
        case .realEstate:
            return "Real Estate"
            
        }
    }
}
