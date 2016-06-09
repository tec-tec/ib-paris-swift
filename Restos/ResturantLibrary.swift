//
//  ResturantLibrary.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 08/06/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import Foundation

struct RestaurantLibrary {

    static let sharedInstance = RestaurantLibrary()

    private var restaurantArray: [Restaurant]

    private init() {
        restaurantArray = []

        let resto1 = Restaurant(name: "Resto1", address: "Adress1", style: "Style1")
        let resto2 = Restaurant(name: "Resto2", address: "Adress2", style: "Style2")
        let resto3 = Restaurant(name: "Resto3", address: "Adress3", style: "Style3")

        restaurantArray.append(resto1)
        restaurantArray.append(resto2)
        restaurantArray.append(resto3)
    }

    var allRestaurants: [Restaurant] {
        return restaurantArray
    }

    mutating func add(restaurant: Restaurant) {
        
        restaurantArray.append(restaurant)

        let notCenter = NSNotificationCenter.defaultCenter()
        notCenter.postNotificationName(Constants.Notifications.modelUpdatedNotifName, object: nil)
    }

}