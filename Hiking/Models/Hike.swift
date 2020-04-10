//
//  Hike.swift
//  Hiking
//
//  Created by Wanhar on 10/04/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import Foundation

struct Hike {
    let name :String
    let imageURL:String
    let miles:Double
    
}

extension Hike {
    
    static func all() -> [Hike] {
        return [
            Hike(name: "Wanhar", imageURL: "sal", miles: 6),
            Hike(name: "Test", imageURL: "tes", miles: 5.8),
            Hike(name: "Aderta", imageURL: "derta", miles: 5)
        ]
    }
}
