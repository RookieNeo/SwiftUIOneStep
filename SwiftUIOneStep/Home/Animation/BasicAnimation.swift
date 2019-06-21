//
//  BasicAnimation.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct BasicAnimation : View {
    @State var scale: Length = 1
    @State var angle: Double = 0
    @State var borderThickness: Length = 1
    
    var body: some View {
        VStack{
            Button(action: {
                self.scale += 1
            }) {
                Text("Tap here")
                    .scaleEffect(scale)
                    .animation(.basic(duration: 3,curve: .easeIn))
            }
            Button(action: {
                self.angle += 45
                self.borderThickness += 1
            }) {
                Text("Tap here")
                    .padding()
                    .border(Color.red, width: borderThickness)
                    .rotationEffect(.degrees(angle))
                    .animation(.basic())
            }
        }
    }
}

#if DEBUG
struct BasicAnimation_Previews : PreviewProvider {
    static var previews: some View {
        BasicAnimation()
    }
}
#endif
