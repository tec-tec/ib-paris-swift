//
//  Restaurant.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 08/06/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

struct Restaurant {

    let name: String
    var address: String
    let style: String
    var note: Float?
    var visited: Bool

    init(name: String, address: String, style: String, note: Float? = nil, visited: Bool = false) {
        self.name = name
        self.address = address
        self.style = style
        self.note = note
        self.visited = visited
    }
}