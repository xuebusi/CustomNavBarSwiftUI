//
//  AppNavBarView.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Nick Sarno on 9/8/21.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(destination:
                                Text("子页面")
                                .customNavigationTitle("子页面标题")
                                .customNavigationSubtitle("子页面副标题")
                ) {
                    
                    Text("导航跳转")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 8)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .customNavBarItems(title: "首页标题", subtitle: "首页副标题", backButtonHidden: true)
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink(
                    destination:
                        Text("Destination")
                        .navigationTitle("Title 2")
                        .navigationBarBackButtonHidden(false)
                    ,
                    label: {
                        Text("Navigate")
                    })
                
            }
            .navigationTitle("Nav title here")
        }
    }
}
