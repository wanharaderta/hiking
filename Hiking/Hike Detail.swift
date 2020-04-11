//
//  Hike Detail.swift
//  Hiking
//
//  Created by Wanhar on 11/04/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    
    var body: some View {
        
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }
    }
}

struct Hike_Detail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike:Hike(name: "wanhar", imageURL: "maro", miles: 10))
    }
}


