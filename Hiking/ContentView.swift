//
//  ContentView.swift
//  Hiking
//
//  Created by Wanhar on 10/04/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        
        List(self.hikes, id: \.name){ hike in
            HikeCell(item: hike)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let item:Hike
    
    var body: some View {
        HStack{
            Image(item.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            VStack(alignment:.leading){
                Text(item.name)
                Text(String(format: "%.2f", item.miles))
            }
            
        }
    }
}
