//
//  BlurView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct BlurView : View {
    var body: some View {
        VStack {
            Image("turtlerock")
                .resizable()
                .frame(width: 300, height: 300)
                .blur(radius: 20)
            Divider()
            Text("Welcome to my SwiftUI app")
                .blur(radius: 2)
        }
    }
}

#if DEBUG
struct BlurView_Previews : PreviewProvider {
    static var previews: some View {
        BlurView()
    }
}
#endif
