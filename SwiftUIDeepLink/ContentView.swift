//
//  ContentView.swift
//  SwiftUIDeepLink
//
//  Created by paige on 2022/01/14.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var appData: AppDataModel
    
    var body: some View {
        Home()
            .environmentObject(appData)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
