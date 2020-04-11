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
    @State private var zoomed:Bool = false
    
    var body: some View {
        
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        self.zoomed.toggle()
                    }
            }
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct Hike_Detail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike:Hike(name: "wanhar", imageURL: "maro", miles: 10))
    }
}


