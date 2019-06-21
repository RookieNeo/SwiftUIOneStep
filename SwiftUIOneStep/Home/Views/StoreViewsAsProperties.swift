//
//  StoreViewsAsProperties.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/20.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct StoreViewsAsProperties : View {
    let title = Text("Paul Hudson")
        .font(.largeTitle)
    let subtitle = Text("Author")
        .foregroundColor(.secondary)
    
    var body: some View {
        VStack {
            title
            subtitle
        }
    }
}

#if DEBUG
struct StoreViewsAsProperties_Previews : PreviewProvider {
    static var previews: some View {
        StoreViewsAsProperties()
    }
}
#endif
