//
//  SwiftUIDeepLinkApp.swift
//  SwiftUIDeepLink
//
//  Created by paige on 2022/01/14.
//

import SwiftUI

@main
struct SwiftUIDeepLinkApp: App {
    
    @StateObject var appData: AppDataModel = AppDataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
                .onOpenURL { url in
                    // used to fetch the deep link url...
                    print("incoming url: \(url)")
                    if appData.checkDeepLink(url: url) {
                        print("FROM DEEP LINK")
                    } else {
                        print("FALL BACK DEEP LINK")
                    }
                }
        }
    }
}

// Integrating Deep Link...
// First create a url scheme for how to call your url...
// EG: paigesoftware
// calling will be done like `paigesoftware://`
