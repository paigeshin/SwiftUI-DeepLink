//
//  AppDataModel.swift
//  SwiftUIDeepLink
//
//  Created by paige on 2022/01/14.
//

import Combine
import Foundation

class AppDataModel: ObservableObject {
    
    @Published var currentTab: Tab = .home
    @Published var currentDetailPage: String?
    
    func checkDeepLink(url: URL) -> Bool {
        
        guard let host = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host else {
            return false
        }
        
        // Updating Tabs...
        if host == Tab.home.rawValue {
            // paigesoftware://home
            currentTab = .home
        } else if host == Tab.search.rawValue {
            // paigesoftware://search
            currentTab = .search
        } else if host == Tab.settings.rawValue {
            // paigesoftware://settings
            currentTab = .settings
        } else {
            return checkInternalLinks(host: host)
        }
        
        return true
    }
    
    func checkInternalLinks(host: String) -> Bool {
        // paigesoftware://CCFFB11
        
        // checking if host contains any navigation link ids...
        if let index = coffees.firstIndex(where: { coffee in
            return coffee.id == host
        }) {
            
            // Chaning to search tab...
            // since navigation links are in search tab
            currentTab = .search
            // setting nav link selection...
            self.currentDetailPage = coffees[index].id
            
            
            return true
        }
    
        return false
    }
    
}

// Tab enum...
enum Tab: String {
    case home = "home"
    case search = "search"
    case settings = "settings"
}
