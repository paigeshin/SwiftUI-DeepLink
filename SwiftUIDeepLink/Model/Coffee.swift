//
//  Coffee.swift
//  SwiftUIDeepLink
//
//  Created by paige on 2022/01/14.
//

import SwiftUI

struct Coffee: Identifiable {
    var id: String
    var title: String
    var description: String
    var productImage: String
    var productPrice: String
}

var coffees: [Coffee] = [
    Coffee(id: "CCFFB11", title: "1", description: "", productImage: "1", productPrice: "$17"),
    Coffee(id: "CCFFB12", title: "2", description: "", productImage: "2", productPrice: "$17"),
    Coffee(id: "CCFFB13", title: "3", description: "", productImage: "3", productPrice: "$17"),
    Coffee(id: "CCFFB14", title: "4", description: "", productImage: "4", productPrice: "$17"),
    Coffee(id: "CCFFB15", title: "5", description: "", productImage: "5", productPrice: "$17"),
    Coffee(id: "CCFFB16", title: "6", description: "", productImage: "6", productPrice: "$17"),
]
