//
//  BlendView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct BlendView : View {
    var body: some View {
        ZStack {
            Image("turtlerock")
            Image("landmark")
                .blendMode(.multiply)
        }
    }
}

#if DEBUG
struct BlendView_Previews : PreviewProvider {
    static var previews: some View {
        BlendView()
    }
}
#endif
