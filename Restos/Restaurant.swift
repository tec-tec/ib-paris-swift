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

extension Restaurant: Mappable {
    var title: String {
        return name
    }
}

protocol Mappable {

    var title: String { get }
    var address: String { get }

    func test()
}

protocol Mappable2: Mappable {

    func test()
}

extension Mappable {
    var title: String {
        return"TOTO"
    }


    func test() {
        print("1")
    }
}

extension Mappable2 {

    func test() {
        print("2")
    }
}