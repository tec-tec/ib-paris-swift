//
//  ResturantLibrary.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 08/06/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

struct RestaurantLibrary {

    private var restaurantArray = [Restaurant]()

    var allRestaurants: [Restaurant] {
        return restaurantArray
    }

    mutating func add(restaurant: Restaurant) {
        restaurantArray.append(restaurant)
    }

}