//
//  SpringAnimation.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct SpringAnimation : View {
    @State var angle: Double = 0
    
    var body: some View {
        Button(action: {
            self.angle += 45
        }) {
            Text("Tap here")
                .padding()
                .rotationEffect(.degrees(angle))
                .animation(.spring(mass: 1, stiffness: 1, damping: 0.1, initialVelocity: 10))
        }
    }
}

#if DEBUG
struct SpringAnimation_Previews : PreviewProvider {
    static var previews: some View {
        SpringAnimation()
    }
}
#endif
