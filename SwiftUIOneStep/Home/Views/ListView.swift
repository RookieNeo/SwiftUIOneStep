//
//  ListView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct RestaurantRow: View {
    var name: String
    
    var body: some View {
        Text("Restaurant: \(name)")
    }
}

struct ListView : View {
    var body: some View {
        List {
            RestaurantRow(name: "a")
            RestaurantRow(name: "a")
            RestaurantRow(name: "a")
            RestaurantRow(name: "a")
        }
    }
}

#if DEBUG
struct ListView_Previews : PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
#endif
