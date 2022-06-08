//
//  NavigationBarWithButton.swift
//  MyAssets
//
//  Created by Isaac Kim on 6/6/22.
//

import SwiftUI

struct NavigationBarWithButton: ViewModifier {
    var title: String = ""
    
    func body(content: Content) -> some View {
         content
            .navigationBarItems(
                leading: Text(title)
                    .font(.system(size: 24, weight: .bold))
                    .padding(),
                trailing: Button(
                    action: {
                        print("Asset add button tapped")
                    }, label: {
                        Image(systemName: "plus")
                        Text("Add Asset")
                            .font(.system(size: 12))
                    }
                    
                )
                    .accentColor(.black)
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 6, trailing: 8))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black)
                                
                            )
            )
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                let appearance = UINavigationBarAppearance()
                appearance.configureWithTransparentBackground()
                appearance.backgroundColor = UIColor(white: 1, alpha: 0.5)
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().compactAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
    }
    
    
}
extension View {
    func navigationBarWithButtonStyle(_ title: String) -> some View {
        return self.modifier(NavigationBarWithButton( title: title))
    }
}

struct NavigationBarWithButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Color.gray.edgesIgnoringSafeArea(.all)
                .navigationBarWithButtonStyle("My Assets")
            
        }
    }
}
