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
            Hike(name: "Wanhar", imageURL: "maro", miles: 6),
            Hike(name: "Maro", imageURL: "maro1", miles: 5.8),
            Hike(name: "Aderta", imageURL: "maro2", miles: 5)
        ]
    }
}
